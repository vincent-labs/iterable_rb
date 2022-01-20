# Iterable::OptionalApiUser

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | An email must be set unless a profile already exists with a userId set. In which case, a lookup from userId to email is performed. | [optional] 
**data_fields** | **Object** |  | [optional] 
**user_id** | **String** | Optional userId, typically your database generated id. Either email or userId must be specified. | [optional] 
**prefer_user_id** | **BOOLEAN** | Create a new user with the specified userId if the user does not exist yet. | [optional] 
**merge_nested_objects** | **BOOLEAN** | Merge top level objects instead of overwriting (default: false). e.g. if user profile has data: {mySettings:{mobile:true}} and change contact field has data: {mySettings:{email:true}}, the resulting profile: {mySettings:{mobile:true,email:true}} | [optional] 

