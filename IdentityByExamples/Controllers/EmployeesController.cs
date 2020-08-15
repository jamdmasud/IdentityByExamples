using IdentityByExamples.Models;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.EntityFrameworkCore;
using System;
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

        [HttpGet]
        public async Task<IActionResult> Get()
        {
            var employee = await ApplicationContext.Employees.ToListAsync();
            return Ok(employee);
        }

        [HttpGet("{id:guid}")]
        public async Task<IActionResult> Get(Guid id)
        {
            var employee = await ApplicationContext.Employees.FindAsync(id);
            return Ok(employee);
        }

        [HttpPost]
        public async Task<IActionResult> Post([FromBody]Employee employee)
        {
            employee.Id = Guid.NewGuid();
            var emp = ApplicationContext.Employees.Add(employee);
            await ApplicationContext.SaveChangesAsync();
            return Ok(employee);
        }

        [HttpPut("{id:guid}")]
        public async Task<IActionResult> Put(Guid id, [FromBody]Employee employee)
        {
            var emp = ApplicationContext.Employees.Find(id);
            if(emp != null)
            {
                emp.Age = employee.Age;
                emp.Name = employee.Name;
                emp.Position = emp.Position;
                ApplicationContext.Employees.Update(emp);
                await ApplicationContext.SaveChangesAsync();
                return Ok(employee);
            }
            else
            {
                return NotFound();
            }
     
        }

        [HttpDelete("{id:guid}")]
        public async Task<IActionResult> Delete(Guid id)
        {
            var emp = ApplicationContext.Employees.Find(id);
            if (emp != null)
            {
                ApplicationContext.Employees.Remove(emp);
                await ApplicationContext.SaveChangesAsync();
                return Ok(emp);
            }
            else
            {
                return NotFound();
            }
        }
    }
}