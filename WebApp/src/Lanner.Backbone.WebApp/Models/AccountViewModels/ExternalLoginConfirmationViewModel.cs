﻿using System.ComponentModel.DataAnnotations;

namespace Lanner.Backbone.WebApp.Models.AccountViewModels
{
    public class ExternalLoginConfirmationViewModel
    {
        [Required]
        [EmailAddress]
        public string Email { get; set; }
    }
}
