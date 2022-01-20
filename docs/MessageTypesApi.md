# Iterable::MessageTypesApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**message_types**](MessageTypesApi.md#message_types) | **GET** /api/messageTypes | List message types

# **message_types**
> MessageTypesResponse message_types

List message types

List all message types within a project. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::MessageTypesApi.new

begin
  #List message types
  result = api_instance.message_types
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MessageTypesApi->message_types: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**MessageTypesResponse**](MessageTypesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



