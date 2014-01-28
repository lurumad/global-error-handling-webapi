using System;

namespace $rootnamespace$.Exceptions
{
    public class ApiException : Exception
    {
        public string Message { get; set; }
        public int? ErrorCode { get; set; }
        public Uri MoreInfo { get; set; }

        public ApiException(string message, int errorCode, Uri moreInfo)
        {
            Message = message;
            ErrorCode = errorCode;
            MoreInfo = moreInfo;
        }
    }
}