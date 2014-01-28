using System;
using System.Net;
using System.Net.Http;
using System.Text;
using System.Threading;
using System.Threading.Tasks;
using System.Web.Http;
using $rootnamespace$.Exceptions;
using $rootnamespace$.Extensions;

namespace $rootnamespace$.Results
{
    public class BadRequestCustomApiResult : IHttpActionResult
    {
        public BadRequestCustomApiResult(ApiException exception, Encoding encoding, HttpRequestMessage request)
        {
            if (exception == null)
            {
                throw new ArgumentNullException("exception");
            }

            if (encoding == null)
            {
                throw new ArgumentNullException("encoding");
            }

            if (request == null)
            {
                throw new ArgumentNullException("request");
            }

            Exception = exception;
            Encoding = encoding;
            Request = request;
        }

        public ApiException Exception { get; set; }
        public Encoding Encoding { get; private set; }
        public HttpRequestMessage Request { get; private set; }

        public Task<HttpResponseMessage> ExecuteAsync(CancellationToken cancellationToken)
        {
            return Task.FromResult(Execute());
        }

        private HttpResponseMessage Execute()
        {
            return Request.CreateErrorResponse(
                HttpStatusCode.BadRequest, 
                Exception.CreateHttpError());
        }
    }
}