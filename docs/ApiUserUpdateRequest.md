# Iterable::ApiUserUpdateRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**data_fields** | **Object** | Data fields to store in the user profile | [optional] 
**user_id** | **String** | Optional userId, typically your database generated id. Either email or userId must be specified. | [optional] 
**prefer_user_id** | **BOOLEAN** | Create a new user with the specified userId if the user does not exist yet. | [optional] 
**merge_nested_objects** | **BOOLEAN** | Merge top level objects instead of overwriting (default: false). e.g. if user profile has data: {mySettings:{mobile:true}} and change contact field has data: {mySettings:{email:true}}, the resulting profile: {mySettings:{mobile:true,email:true}} | [optional] 

