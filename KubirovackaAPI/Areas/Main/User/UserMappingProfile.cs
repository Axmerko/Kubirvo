using System;
using AutoMapper;
using KubirovackaAPI.Areas.Main.User.Enums;
using KubirovackaAPI.Areas.Main.User.Models.Database;
using KubirovackaAPI.Areas.Main.User.Models.DTO;
using KubirovackaAPI.Utilities;
using Microsoft.Extensions.Localization;

namespace KubirovackaAPI.Areas.Main.User
{
    public class UserMappingProfile : Profile
    {
        public UserMappingProfile()
        {
            CreateMap<UserRegisterDTO, Models.Database.User>()
                .ForMember(dest => dest.Id, 
                    opt => opt.MapFrom(src => Guid.NewGuid()))
                .ForMember(dest => dest.Email,
                    opt => opt.MapFrom(src => src.Email.ToLower()))
                .ForMember(dest => dest.FirstName,
                    opt => opt.MapFrom(src => src.FirstName.ToNameString()))
                .ForMember(dest => dest.LastName,
                    opt => opt.MapFrom(src => src.LastName.ToNameString()));            
            
            CreateMap<UserAddFormDTO, Models.Database.User>()
                .ForMember(dest => dest.Id, 
                    opt => opt.MapFrom(src => Guid.NewGuid()))
                .ForMember(dest => dest.Email,
                    opt => opt.MapFrom(src => src.Email.ToLower()))
                .ForMember(dest => dest.FirstName,
                    opt => opt.MapFrom(src => src.FirstName.ToNameString()))
                .ForMember(dest => dest.LastName,
                    opt => opt.MapFrom(src => src.LastName.ToNameString()));
            
            CreateMap<Models.Database.User, UserAddFormDTO>();
            CreateMap<Models.Database.User, UserRegisterDTO>();
            CreateMap<Models.Database.User, UserProfileDTO>();

            CreateMap<Group, GroupDTO>();

            CreateMap<License, LicenseDTO>()
                .ForMember(dest => dest.OwnerName, 
                    opt => 
                        opt.MapFrom(src => src.User.LastName + " " + src.User.FirstName));

            CreateMap<Role, RoleDTO>();
        }
        
    }
}