using MediatR;
using Microsoft.AspNetCore.Mvc;

namespace Lanner.Backbone.WebApp.Controllers.Api
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