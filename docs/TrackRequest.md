# Iterable::TrackRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**event_name** | **String** | Name of event | 
**id** | **String** | Optional event id. If an event exists with that id, the event will be updated. If none is specified, a new id will automatically be generated and returned. Note that this ID cannot be longer than 512 bytes. | [optional] 
**created_at** | **Integer** | Time event happened. Set to the time event was received if unspecified. Expects a unix timestamp. | [optional] 
**data_fields** | **Object** | Additional data associated with event (i.e. item amount, item quantity). For events of the same name, identically named data fields must be of the same type. | [optional] 
**user_id** | **String** | userId that was passed into the updateUser call | [optional] 
**campaign_id** | **Integer** | Campaign tied to conversion | [optional] 
**template_id** | **Integer** | Template id | [optional] 

