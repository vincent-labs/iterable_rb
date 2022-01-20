# Iterable::UpsertPushTemplateModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_template_id** | **String** | Id used by the client to identify a template. If multiple templates exist with the Id, all will be updated | 
**name** | **String** | Name of the template | [optional] 
**title** | **String** | Push message title | [optional] 
**message** | **String** | Push message | [optional] 
**payload** | [**JsObject**](JsObject.md) |  | [optional] 
**badge** | **String** | Badge to set for push notification | [optional] 
**locale** | **String** | The locale for the content in this request. Leave empty for default locale.Iterable will automatically send the content with locale that matches a &#x27;locale&#x27; field in the user profile. | [optional] 
**message_type_id** | **Integer** | Message Type Id | [optional] 
**sound** | **String** | Sound | [optional] 
**deeplink** | [**DeeplinkURI**](DeeplinkURI.md) |  | [optional] 
**creator_user_id** | **String** | Specify a specific creator user id (email). The email must be an existing member of the project. Defaults to the organization creator. | [optional] 
**message_medium** | [**MessageMedium**](MessageMedium.md) |  | 

