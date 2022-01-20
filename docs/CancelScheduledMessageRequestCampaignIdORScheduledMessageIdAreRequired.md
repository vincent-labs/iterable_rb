# Iterable::CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | If campaignId, either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**campaign_id** | [**BigDecimal**](BigDecimal.md) | If campaignId, email or userId is required. | [optional] 
**scheduled_message_id** | [**BigDecimal**](BigDecimal.md) |  | [optional] 
**user_id** | **String** | Optional userId, typically your database generated id. If campaignId, either email or userId must be specified. | [optional] 

