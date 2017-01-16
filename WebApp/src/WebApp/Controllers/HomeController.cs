using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Authorization;
using Microsoft.Extensions.Logging;

namespace WebApp.Controllers
{
    public class HomeController : Controller
    {
        private readonly ILogger<HomeController> _logger;

        public HomeController(ILogger<HomeController> logger)
        {
            _logger = logger;
        }

        public IActionResult Index()
        {
            // 1. MetiatR
            // https://github.com/jbogard/MediatR
            // https://github.com/alexjamesbrown/MashMonolithsIntoManageableModulesWithMediatr/tree/before/CashJobSite.Data
            // https://www.stevejgordon.co.uk/cqrs-using-mediatr-asp-net-core
            // 2. DataDirectory
            // Should change it to App_Data located off the approot and not wwwroot
            // http://stackoverflow.com/questions/31579229/app-data-directory-in-asp-net5-mvc6
            // 3. Seperate database for Tennants and Backbone
            // 4. (Done) Map code first entities to existing database
            // 5. Get api Project controller to list Projects

            return View();
        }

        public IActionResult About()
        {
            ViewData["Message"] = "Your application description page.";

            return View();
        }

        public IActionResult Contact()
        {
            ViewData["Message"] = "Your contact page.";

            return View();
        }

        public IActionResult Error()
        {
            return View();
        }
    }
}
