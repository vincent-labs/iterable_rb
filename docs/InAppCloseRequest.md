# Iterable::InAppCloseRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**user_id** | **String** | userId that was passed into the updateUser call | [optional] 
**message_id** | **String** | The ID of the message associated with the event | 
**clicked_url** | **String** | url used to close the in-app | [optional] 
**message_context** | [**InboxMessageContext**](InboxMessageContext.md) |  | [optional] 
**close_action** | **String** | The type of action that initiated the close (for example, link, back or another custom value) | [optional] 
**device_info** | [**DeviceInfo**](DeviceInfo.md) |  | [optional] 
**inbox_session_id** | **String** | Inbox SessionId | [optional] 
**created_at** | **Integer** | Time event happened. Set to the time event was received if unspecified. Expects a Unix timestamp. | [optional] 

