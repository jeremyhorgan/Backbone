using System;
using System.Collections.Generic;

namespace Lanner.Backbone.Data.Model
{
    public class Application
    {
        public int Id { get; set; }
        public int ApplicationTypeId { get; set; }
        public int? IconId { get; set; }
        public string Name { get; set; } // 60
        public string ModelFilename { get; set; } // 240
        public string Notes { get; set; }
        public string IconFilename { get; set; } // 240
        public bool IsTemplate { get; set; }
        public bool IsPublished { get; set; }
        public bool IsArchived { get; set; }
        public byte?[] ModelFile { get; set; }
        public string ValidationScript { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }

        public  ApplicationType ApplicationType { get; set; }
        public List<Project> Projects { get; set; }
    }
}
