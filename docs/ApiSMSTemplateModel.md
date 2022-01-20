# Iterable::ApiSMSTemplateModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** | SMS template ID | 
**created_at** | **DateTime** | Date created [Read only] | [optional] 
**updated_at** | **DateTime** | Date last updated [Read only] | [optional] 
**name** | **String** | Name of the template | [optional] 
**message** | **String** | SMS message | [optional] 
**locale** | **String** | The locale for the content in this request. Leave empty for default locale. Iterable will automatically send the content with locale that matches a &#x27;locale&#x27; field in the user profile. | [optional] 
**message_type_id** | **Integer** | Message Type Id | [optional] 
**image_url** | **String** | Image Url | [optional] 
**client_template_id** | **String** | Client template Id. Used as a secondary key to reference the template | [optional] 
**campaign_id** | **Object** | Campaign ID | [optional] 
**tracking_domain** | **String** | Tracking Domain | [optional] 
**google_analytics_campaign_name** | **String** | Google analytics utm_campaign value | [optional] 
**link_params** | [**Array&lt;LinkParam&gt;**](LinkParam.md) | Parameters to append to each URL in contents | [optional] 

