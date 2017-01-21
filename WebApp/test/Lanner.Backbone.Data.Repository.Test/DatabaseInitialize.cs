using System;
using System.Text;
using System.Collections.Generic;
using System.Configuration;
using System.IO;
using Microsoft.VisualStudio.TestTools.UnitTesting;

namespace Lanner.Backbone.Data.Repository.Test
{
    /// <summary>
    /// Database deployment. Currently db is controlled and maintained using sql scripts.
    /// These are deployed here and cleaned up afterwards.
    /// </summary>
    [TestClass]
    public class DatabaseInitialize
    {
        private const string DatabaseName = "RepositoryTest";
        private const string MasterConnectionString = @"Data Source=(LocalDB)\MSSQLLocalDB;Initial Catalog=master;Integrated Security=True";
        
        [AssemblyInitialize]
        public static void CreateDatabase(TestContext context)
        {
            var databaseFilename = Path.Combine(context.TestDeploymentDir, $"{DatabaseName}.mdf");

            // Create a localdb file in the 
            DatabaseUtils.CreateDatabase(MasterConnectionString, DatabaseName, databaseFilename);

            var backboneFolder = Directory.GetParent(context.TestDir).Parent?.Parent?.FullName;
            if (backboneFolder != null)
            {
                var schemaFolder = Path.Combine(backboneFolder, "Data", "Schema");
                var schemaFile = Path.Combine(schemaFolder, "BackboneSchemaCreateEmpty.sql");
                var referenceDataFile = Path.Combine(schemaFolder, "BackboneReferenceData.sql");

                // Deploy the database followed by the reference data
                var connectionString = GetConnectionString(context.TestDeploymentDir);
                DatabaseUtils.ExecuteSqlScriptFromFile(connectionString, schemaFile);
                DatabaseUtils.ExecuteSqlScriptFromFile(connectionString, referenceDataFile);
            }
        }

        internal static string GetConnectionString(string testDir)
        {
            return $@"Data Source=(LocalDB)\MSSQLLocalDB;AttachDbFilename={testDir}\{DatabaseName}.mdf;Integrated Security=True";
        }

        [AssemblyCleanup]
        public static void DropDatabase()
        {
            //DatabaseUtils.ExecuteSqlScript(MasterConnectionString, $"DROP DATABASE {DatabaseName}");
        }
    }
}
