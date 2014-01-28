using System;
using System.Reflection;
using System.Web.Http;

namespace $rootnamespace$.Extensions
{
    public static class ExceptionExtensions
    {
        public static HttpError CreateHttpError<T>(this T exception) where T : Exception
        {
            const BindingFlags bindingFlags = BindingFlags.Instance | BindingFlags.Public | BindingFlags.DeclaredOnly;

            var properties = exception.GetType().GetProperties(bindingFlags);

            var httpError = new HttpError();

            foreach (var propertyInfo in properties)
            {
                httpError.Add(propertyInfo.Name, propertyInfo.GetValue(exception, null));
            }

            return httpError;
        }
    }
}