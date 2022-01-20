# Iterable::TrackPushOpenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**user_id** | **String** | userId that was passed into the updateUser call | [optional] 
**campaign_id** | **Integer** | Campaign tied to open | 
**template_id** | **Integer** | Used in AB testing attribution | [optional] 
**message_id** | **String** | Iterable-generated Message ID | 
**created_at** | **Integer** | Timestamp of the open event. If unspecified, set to the time event was received  Expects a unix timestamp. | [optional] 
**data_fields** | **Object** | Additional data associated with event | [optional] 

