# Iterable::RegisterBrowserTokenRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | An email must be set unless a profile already exists with a userId set. In which case, a lookup from userId to email is performed. | [optional] 
**browser_token** | **String** | This is provided by Firebase Messaging javascript API. | 
**user_id** | **String** | Optional userId, typically your database generated id. Can be used in events/track api. | [optional] 

