using System;
using System.Web.Http;
using $rootnamespace$.Exceptions;

namespace $rootnamespace$.Controllers
{
    public class ExceptionController : ApiController
    {
        public void Get()
        {
            throw new ApiException("Error for developer", 64, new Uri("http://dev.api.com/error/64"));
            
            //throw new Exception("Can not connect to service.");
        }
    }
}