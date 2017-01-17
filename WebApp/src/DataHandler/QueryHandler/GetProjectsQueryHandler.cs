using DataContext;
using DataHandler.Query;
using DataModel;
using MediatR;
using System;
using System.Collections.Generic;

namespace DataHandler.QueryHandler
{
    public class GetProjectsQueryHandler : IRequestHandler<GetProjectsQuery, IEnumerable<Project>>
    {
        public GetProjectsQueryHandler(BackboneDbContext dbContext)
        {

        }

        public IEnumerable<Project> Handle(GetProjectsQuery message)
        {
            throw new NotImplementedException();
        }
    }
}
