using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Mvc;
using MediatR;

namespace WebApp.Controllers.Api
{
    [Route("api/[controller]")]
    public class ProjectController : Controller
    {
        private readonly IMediator _mediator;

        public ProjectController(IMediator mediator)
        {
            _mediator = mediator;
        }

        [HttpGet()]
        public IActionResult Get()
        {
            return Ok(new string[] { "Hello", "World" });
        }
    }
}