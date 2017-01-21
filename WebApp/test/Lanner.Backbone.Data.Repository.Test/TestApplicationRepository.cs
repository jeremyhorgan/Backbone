using System;
using Lanner.Backbone.Data.Context;
using Lanner.Backbone.Data.Model;
using Microsoft.EntityFrameworkCore;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Lanner.Backbone.Data.Repository.Test
{
    /// <summary>
    /// Integration tests for the Application Repository.
    /// </summary>
    [TestClass]
    public class TestApplicationRepository
    {
        public TestContext TestContext { get; set; }

        [TestMethod]
        public void TestAdd_ShouldSucceed()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);

            // Act 
            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = new Application
                {
                    ApplicationTypeId = 1,
                    Name = "TestAdd_ValidArguments_ShouldSucceed",
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                unitOfWork.Applications.Add(app);

                unitOfWork.Complete();
            }

            // Assert                        
            AssertHelper.EntityExists<Application>(connectionString, e => e.Name == "TestAdd_ValidArguments_ShouldSucceed");
        }

        [TestMethod]
        [ExpectedException(typeof(RepositoryException))]
        public void TestAdd_WithMissingProperties_ShouldThrowException()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);

            // Act 
            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = new Application();

                unitOfWork.Applications.Add(app);

                unitOfWork.Complete();
            }

            // Assert                                    
            // Expected exception
        }

        [TestMethod]
        public void TestDelete_ShouldSucceed()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);
            int id;

            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = new Application
                {
                    ApplicationTypeId = 1,
                    Name = "TestAdd_ValidArguments_ShouldSucceed",
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                unitOfWork.Applications.Add(app);

                unitOfWork.Complete();
                id = app.Id;
            }

            // Act 
            context = new BackboneDbContext(options.Options);
            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = unitOfWork.Applications.Get(id);
                unitOfWork.Applications.Remove(app);
                
                unitOfWork.Complete();
            }

            // Assert                        
            AssertHelper.EntityNotExists<Application>(connectionString, e => e.Id == id);
        }

        [TestMethod]
        public void TestUpdate_ShouldSucceed()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);
            int id;

            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = new Application
                {
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                unitOfWork.Applications.Add(app);

                unitOfWork.Complete();
                id = app.Id;
            }

            // Act 
            context = new BackboneDbContext(options.Options);
            using (var unitOfWork = new UnitOfWork(context))
            {
                var app = unitOfWork.Applications.Get(id);                
                app.Name = "TestForUpdate_AfterUpdate";

                unitOfWork.Complete();
            }

            // Assert                        
            AssertHelper.EntityExists<Application>(connectionString, e => e.Name == "TestForUpdate_AfterUpdate");
        }

        [TestMethod]
        public void TestGetWithApplicationType_ShouldSucceed()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);
            Application app;

            // Act
            using (var unitOfWork = new UnitOfWork(context))
            {
                app = new Application
                {
                    ApplicationTypeId = 1,
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                unitOfWork.Applications.Add(app);
                unitOfWork.Complete();

                app = unitOfWork.Applications.GetWithApplicationType(app.Id);
            }

            // Assert                        
            Assert.IsNotNull(app.ApplicationType);
        }

        [TestMethod]
        public void TestGetWithProjects_ShouldSucceed()
        {
            // Arrange
            var options = new DbContextOptionsBuilder<BackboneDbContext>();
            var connectionString = DatabaseInitialize.GetConnectionString(TestContext.TestDeploymentDir);
            options.UseSqlServer(connectionString);
            var context = new BackboneDbContext(options.Options);
            Application app;
            
            using (var unitOfWork = new UnitOfWork(context))
            {
                app = new Application
                {
                    ApplicationTypeId = 1,
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                var project1 = new Project()
                {
                    Application = app,
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };
                var project2 = new Project()
                {
                    Application = app,
                    DateModified = DateTime.Now,
                    DateCreated = DateTime.Now
                };

                unitOfWork.Projects.Add(project1);
                unitOfWork.Projects.Add(project2);
                unitOfWork.Applications.Add(app);

                unitOfWork.Complete();
            }

            // Act
            context = new BackboneDbContext(options.Options);
            using (var unitOfWork = new UnitOfWork(context))
            {
                app = unitOfWork.Applications.GetWithProjects(app.Id);
            }

            // Assert         
            Assert.IsNotNull(app.Projects);               
            Assert.AreEqual(2, app.Projects.Count);
        }
    }
}
