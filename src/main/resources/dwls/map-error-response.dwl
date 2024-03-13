%dw 2.0
output application/json
---
{
	"status": "failure",
	"code": if ( error.errorMessage.attributes.statusCode != null ) (error.errorMessage.attributes.statusCode) else '500',
	"message": error.cause.message default "",
	"description": error.cause.message default ""
}