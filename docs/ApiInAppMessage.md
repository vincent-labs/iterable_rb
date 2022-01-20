# Iterable::ApiInAppMessage

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**message_id** | **String** | Iterable-generated Message ID | [optional] 
**campaign_id** | [**BigDecimal**](BigDecimal.md) | Campaign ID | [optional] 
**created_at** | **DateTime** | Time the In-app message was created | [optional] 
**expires_at** | **DateTime** | Time the in-app message will expire | [optional] 
**content** | [**InAppContentApi**](InAppContentApi.md) |  | [optional] 
**custom_payload** | **Object** | The custom payload for the in-app message | [optional] 
**trigger** | [**InAppTrigger**](InAppTrigger.md) |  | [optional] 
**save_to_inbox** | **BOOLEAN** | Whether or not the message associated with the event was configured to use the inbox | [optional] 
**inbox_metadata** | [**InboxMetadata**](InboxMetadata.md) |  | [optional] 
**priority_level** | [**BigDecimal**](BigDecimal.md) | The priority value of the in-app message | [optional] 
**read** | **BOOLEAN** | Whether or not the message was read by user | [optional] 
**type_of_content** | [**InAppTypeOfContent**](InAppTypeOfContent.md) |  | 

