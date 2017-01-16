using System;

namespace Lanner.Backbone.Data.Model
{
    public class Project
    {
        public int Id { get; set; }
        public int ApplicationId { get; set; }
        public int? IconId { get; set; }
        public string Name { get; set; }    // 60
        public string Stakeholders { get; set; }
        public string WhatIsBeingAsked { get; set; }
        public DateTime? AnswerResponseDate { get; set; }
        public bool IsArchived { get; set; }
        public bool IsSevenDayDeadlineNotificationSent { get; set; }
        public bool IsThreeDayDeadlineNotificationSent { get; set; }
        public bool IsDeadlineReachedNotificationSent { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }

        public Application Application { get; set; }
    }
}
