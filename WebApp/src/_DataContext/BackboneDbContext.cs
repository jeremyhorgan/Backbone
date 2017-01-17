using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using DataModel;
using Microsoft.EntityFrameworkCore;

namespace DataContext
{
    public class BackboneDbContext : DbContext
    {
        public DbSet<Project> Projects { get; set; }

        protected override void OnModelCreating(ModelBuilder modelBuilder)
        {
            base.OnModelCreating(modelBuilder);
            
            MapProjectEntity(modelBuilder);
        }

        private void MapProjectEntity(ModelBuilder modelBuilder)
        {
            // tblProject => Models.Project
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
