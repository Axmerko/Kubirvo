using AutoMapper;
using KubirovackaAPI.Areas.Misc.Feedback.Models.DTO;

namespace KubirovackaAPI.Areas.Misc.Feedback
{
    public class FeedbackMappingProfile : Profile
    {
        public FeedbackMappingProfile()
        {
            CreateMap<Models.Database.Feedback, FeedbackDTO>();
        }
    }
}