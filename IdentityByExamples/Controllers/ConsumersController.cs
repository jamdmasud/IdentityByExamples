using IdentityByExamples.Models;
using Microsoft.AspNetCore.Mvc;
using Newtonsoft.Json;

namespace IdentityByExamples.Controllers
{
    [Route("consumers")]
    [ApiController]
    public class ConsumersController : ControllerBase
    {
        [HttpPost("{consumer_agency_id}/noticerequests")]
        public IActionResult Post(string consumer_agency_id, [FromBody]CreateNoticeModel obj)
        {
            obj.SendToEntityDescriptors.Add(new Description { EntityIdentifier = 12312, EntityType = "test" });
            var body = JsonConvert.SerializeObject(obj);
         
            return Ok(body);
        }

        [HttpPost("{consumer_agency_id}/message-queue")]
        public IActionResult SendMessage(string consumer_agency_id, [FromBody]MessageQueue obj)
        {
            var body = JsonConvert.SerializeObject(obj);

            return Ok(body);
        }
    }
}