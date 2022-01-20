# Iterable::InvalidateJwtRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**user_id** | **String** | Optional userId, typically your database generated id. Either email or userId must be specified. | [optional] 
**issued_before** | **Integer** | Timestamp to invalidate JWTs before as epoch time in milliseconds. Defaults to the current time. | [optional] 

