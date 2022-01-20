# Iterable::TrackPurchaseRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**id** | **String** | Optional purchase id. If a purchase exists with that id, the purchase will be updated. If none is specified, a new id will automatically be generated and returned. Note that this ID cannot be longer than 512 bytes. | [optional] 
**user** | [**ApiUserUpdateRequest**](ApiUserUpdateRequest.md) |  | 
**items** | [**Array&lt;CommerceItem&gt;**](CommerceItem.md) |  | 
**campaign_id** | **Integer** |  | [optional] 
**template_id** | **Integer** | Used in AB testing attribution | [optional] 
**total** | **Float** | Total order dollar amount | 
**created_at** | **Integer** | Time event happened. Set to the time event was received if unspecified. Expects a Unix timestamp. | [optional] 
**data_fields** | **Object** | Additional fields to be tracked. | [optional] 

