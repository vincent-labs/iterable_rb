# Iterable::RegisterDeviceTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**device** | [**Device**](Device.md) |  | 
**user_id** | **String** | Register device for a user with specified userId. Either email or userId must be specified. | [optional] 
**prefer_user_id** | **BOOLEAN** | Create a new user with the specified userId if the user does not exist yet. | [optional] 

