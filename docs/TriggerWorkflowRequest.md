# Iterable::TriggerWorkflowRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** | Trigger workflow for given email address. Trigger only with email OR listId (see below) | [optional] 
**workflow_id** | **Integer** | Id of workflow to trigger | 
**data_fields** | **Object** | Additional data associated triggering event | [optional] 
**list_id** | **Integer** | (Optional) Trigger the workflow for all users in a list (standard or dynamic) | [optional] 

