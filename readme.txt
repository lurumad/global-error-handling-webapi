﻿* Update your WebApi configuration file to include these lines:

config.Services.Add(typeof(IExceptionLogger), new ElmahExceptionLogger());
config.Services.Replace(typeof(IExceptionHandler), new ApiExceptionHandler());

config.Formatters.JsonFormatter.SerializerSettings.ContractResolver = 
    new CamelCasePropertyNamesContractResolver();
