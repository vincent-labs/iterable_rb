# Iterable::WebPushClickEventRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**user_id** | **String** | userId that was passed into the updateUser call | [optional] 
**message_id** | **String** |  | 
**campaign_id** | **Integer** |  | [optional] 
**template_id** | **Integer** |  | [optional] 
**created_at** | **Integer** | Time event happened. Set to the time event was received if unspecified. Expects a Unix timestamp. | [optional] 

