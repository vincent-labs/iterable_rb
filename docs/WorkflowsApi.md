# Iterable::WorkflowsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**trigger_workflow**](WorkflowsApi.md#trigger_workflow) | **POST** /api/workflows/triggerWorkflow | Trigger a workflow

# **trigger_workflow**
> IterableApiResponse trigger_workflow(body)

Trigger a workflow

Trigger a workflow. Triggering with a list is asynchronous. If a list trigger is in progress, it must finish before the same list can be triggered again for a particular workflow. The workflow stats may take several minutes to update if other workflows are running.

### Example
```ruby
# load the gem
require 'iterable'
# setup authorization
Iterable.configure do |config|
  # Configure API key authorization: api_key
  config.api_key['Api-Key'] = 'YOUR API KEY'
  # Uncomment the following line to set a prefix for the API key, e.g. 'Bearer' (defaults to nil)
  #config.api_key_prefix['Api-Key'] = 'Bearer'
end

api_instance = Iterable::WorkflowsApi.new
body = Iterable::TriggerWorkflowRequest.new # TriggerWorkflowRequest | Trigger workflow request


begin
  #Trigger a workflow
  result = api_instance.trigger_workflow(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling WorkflowsApi->trigger_workflow: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TriggerWorkflowRequest**](TriggerWorkflowRequest.md)| Trigger workflow request | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



