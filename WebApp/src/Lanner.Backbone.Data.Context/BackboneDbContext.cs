using Lanner.Backbone.Data.Model;
using Microsoft.EntityFrameworkCore;

namespace Lanner.Backbone.Data.Context
{
    public class BackboneDbContext : DbContext
    {
        public DbSet<Project> Projects { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);

            MapApplicationTypeEntity(modelBuilder);
            MapApplicationEntity(modelBuilder);
            MapProjectEntity(modelBuilder);
        }

        private void MapApplicationTypeEntity(ModelBuilder modelBuilder)
        {
            // tblApplicationType => Model.ApplicationType
            modelBuilder.Entity<ApplicationType>().ToTable("tblApplicationType", "dbo");
            modelBuilder.Entity<ApplicationType>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("ApplicationType_ID");                
                entity.Property(e => e.Name).HasColumnName("ApplicationType_Name").HasMaxLength(60);
                entity.Property(e => e.Sort).HasColumnName("ApplicationType_Sort");
                entity.Property(e => e.HasLayoutView).HasColumnName("ApplicationType_HasLayoutView");
                entity.Property(e => e.DateCreated).HasColumnName("Project_DateCreated");
                entity.Property(e => e.DateModified).HasColumnName("Project_DateModified");
            });
        }

        private void MapApplicationEntity(ModelBuilder modelBuilder)
        {
            // tblApplication => Model.Application
            modelBuilder.Entity<Application>().ToTable("tblApplication", "dbo");
            modelBuilder.Entity<Application>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("Application_ID");
                entity.Property(e => e.ApplicationTypeId).HasColumnName("Application_ApplicationTypeID");
                entity.Property(e => e.IconId).HasColumnName("Application_IconID");
                entity.Property(e => e.Name).HasColumnName("Application_Name").HasMaxLength(60);
                entity.Property(e => e.ModelFilename).HasColumnName("Application_ModelFilename").HasMaxLength(60);
                entity.Property(e => e.Notes).HasColumnName("Application_Notes");
                entity.Property(e => e.IconFilename).HasColumnName("Application_IconFilename");                
                entity.Property(e => e.IsTemplate).HasColumnName("Application_IsTemplate");
                entity.Property(e => e.IsPublished).HasColumnName("Application_Published");
                entity.Property(e => e.IsArchived).HasColumnName("Project_Archived");
                entity.Property(e => e.ModelFile).HasColumnName("Application_ModelFile");
                entity.Property(e => e.ValidationScript).HasColumnName("Application_ValidationScript");
                entity.Property(e => e.DateCreated).HasColumnName("Project_DateCreated");
                entity.Property(e => e.DateModified).HasColumnName("Project_DateModified");
            });
        }

        private void MapProjectEntity(ModelBuilder modelBuilder)
        {
            // tblProject => Model.Project
            modelBuilder.Entity<Project>().ToTable("tblProject", "dbo");
            modelBuilder.Entity<Project>(entity =>
            {
                entity.Property(e => e.Id).HasColumnName("Project_ID");
                entity.Property(e => e.ApplicationId).HasColumnName("Project_ApplicationID");
                entity.Property(e => e.IconId).HasColumnName("Project_IconID");
                entity.Property(e => e.Name).HasColumnName("Project_Name").HasMaxLength(60);
                entity.Property(e => e.Stakeholders).HasColumnName("Project_Stakeholders");
                entity.Property(e => e.WhatIsBeingAsked).HasColumnName("Project_WhatIsBeingAsked");
                entity.Property(e => e.AnswerResponseDate).HasColumnName("Project_AnswerResponseDate");
                entity.Property(e => e.IsArchived).HasColumnName("Project_Archived");
                entity.Property(e => e.IsSevenDayDeadlineNotificationSent).HasColumnName("Project_SevenDayDeadlineNotificationSent");
                entity.Property(e => e.IsThreeDayDeadlineNotificationSent).HasColumnName("Project_ThreeDayDeadlineNotificationSent");
                entity.Property(e => e.IsDeadlineReachedNotificationSent).HasColumnName("Project_DeadlineReachedNotificationSent");
                entity.Property(e => e.DateCreated).HasColumnName("Project_DateCreated");
                entity.Property(e => e.DateModified).HasColumnName("Project_DateModified");
            });
        }

    }
}
