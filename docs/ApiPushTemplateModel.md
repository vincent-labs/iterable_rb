# Iterable::ApiPushTemplateModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** | Push template ID | 
**created_at** | **DateTime** | Date created [Read only] | [optional] 
**updated_at** | **DateTime** | Date last updated [Read only] | [optional] 
**name** | **String** | Name of the template | [optional] 
**title** | **String** | Push message title | [optional] 
**message** | **String** | Push message | [optional] 
**payload** | **Object** | Payload to send with push notification | [optional] 
**badge** | **String** | Badge to set for push notification | [optional] 
**locale** | **String** | The locale for the content in this request. Leave empty for default locale. Iterable will automatically send the content with locale that matches a &#x27;locale&#x27; field in the user profile. | [optional] 
**message_type_id** | **Integer** | Message Type Id | [optional] 
**sound** | **String** | Sound | [optional] 
**deeplink** | [**DeeplinkURI**](DeeplinkURI.md) |  | [optional] 
**client_template_id** | **String** | Client template Id. Used as a secondary key to reference the template | [optional] 
**campaign_id** | **Object** | Campaign ID | [optional] 

