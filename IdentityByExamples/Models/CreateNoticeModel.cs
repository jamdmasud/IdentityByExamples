using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace IdentityByExamples.Models
{
    public class CreateNoticeModel
    {
        public bool OnDemand { get; set; }
        public string DocumentTemplateShortName { get; set; }
        public string DeliveryChannelTypeReference { get; set; }
        public int SendDate { get; set; }
        public string EmailSubjectText { get; set; }
        public string EmailBodyText { get; set; }
        public long[] AccountsInNotice { get; set; }
        public List<Description> SendToEntityDescriptors { get; set; }
    }

    public class Description
    {
        public long EntityIdentifier { get; set; }
        public string EntityType { get; set; }
    }
}
