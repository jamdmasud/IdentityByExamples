using IdentityByExamples.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System.Threading.Tasks;

namespace IdentityByExamples.Controllers
{
    [Route("api/employees")]
    [ApiController]
    [Authorize]
    public class EmployeesController : ControllerBase
    {
        public ApplicationContext ApplicationContext { get; }
        public EmployeesController(ApplicationContext applicationContext)
        {
            ApplicationContext = applicationContext;
        }

        [HttpGet("all")]
        public async Task<IActionResult> Get()
        {
            var user = User;
            var employee = await ApplicationContext.Employees.ToListAsync();
            return Ok(employee);
        }
    }
}