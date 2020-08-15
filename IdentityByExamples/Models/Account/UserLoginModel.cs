using System.ComponentModel.DataAnnotations;

namespace IdentityByExamples.Models.Account
{
    public class UserLoginModel
    {
        [Required]
        [EmailAddress]
        public string Username { get; set; }

        [Required]
        [DataType(DataType.Password)]
        public string Password { get; set; }
    }
}
