using DataModel;
using MediatR;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace DataHandler.Query
{
    public class GetProjectsQuery : IRequest<IEnumerable<Project>>
    {
    }
}
