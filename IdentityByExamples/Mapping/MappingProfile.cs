using AutoMapper;
using IdentityByExamples.Models;
using IdentityByExamples.Models.Account;

namespace IdentityByExamples.Mapping
{
    public class MappingProfile : Profile
    {
        public MappingProfile()
        {
            CreateMap<UserRegistrationModel, User>()
                .ForMember(u => u.UserName, opt => opt.MapFrom(x => x.Email));
        }
    }
}
