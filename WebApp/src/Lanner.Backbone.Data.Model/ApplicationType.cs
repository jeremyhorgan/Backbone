using System;
using System.Collections.Generic;

namespace Lanner.Backbone.Data.Model
{
    public class ApplicationType
    {
        public int Id { get; set; }
        public string Name { get; set; } // 60
        public int? Sort { get; set; }
        public bool HasLayoutView { get; set; }
        public DateTime DateCreated { get; set; }
        public DateTime DateModified { get; set; }

        public List<Application> Applications { get; set; }
    }
}
