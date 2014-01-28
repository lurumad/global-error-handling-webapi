Global-Error-Handling-for-WebApi-2.1
====================================

Introduction
====================================

The Global Error Handling for WebApi 2.1 automatically add to WebApi 2.1 project a global error handling. Developers can use these errors to support and show efficients messages to the users.

The nuget package
====================================

http://www.nuget.org/packages/GlobalErrorHandling.WebApi

Why?
====================================

Help to developers to manage in an effecient way errors in WebApi 2.1

Getting Started
====================================

* Install **GlobalErrorHandling.WebApi** from Nuget Package Manager. If you prefer to use Package Manager Console: Install-Package GlobalErrorHandling.WebApi
* Open readme.txt and follow the instructions.
* Run your project from Visual Studio
* Run Fiddler or similar tools http://www.telerik.com/download/fiddler
* Go to Composer copy this url http://host:port/api/exception (Replace host & port)
* Execute and you recieved and 404 error with this content 

```json
{
	"message":"Error for developer",
	"errorCode":64,
	"moreInfo":"http://dev.api.com/error/64"
}
```

Try to change **Accept** header to use **text/xml**:

```
<Error>
 	<Message>Error for developer</Message>
 	<ErrorCode>64</ErrorCode>
	<MoreInfo>http://dev.api.com/error/64</MoreInfo>
</Error>
```
