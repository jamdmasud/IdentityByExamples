using Microsoft.AspNetCore.Identity;
using System;

namespace IdentityByExamples.Models.Account
{
    public class User : IdentityUser
    {
        public string FirstName { get; set; }
        public string LastName { get; set; }
    }
}
