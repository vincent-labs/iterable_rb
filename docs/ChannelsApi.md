# Iterable::ChannelsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**channels**](ChannelsApi.md#channels) | **GET** /api/channels | Get channels

# **channels**
> ChannelsResponse channels

Get channels

Get all message channels within the project. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::ChannelsApi.new

begin
  #Get channels
  result = api_instance.channels
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ChannelsApi->channels: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ChannelsResponse**](ChannelsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



