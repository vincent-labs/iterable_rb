# Iterable::WebhooksApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_webhooks**](WebhooksApi.md#get_webhooks) | **GET** /api/webhooks | Get webhooks
[**update_webhook**](WebhooksApi.md#update_webhook) | **POST** /api/webhooks | Update webhook

# **get_webhooks**
> GetWebhooksResponse get_webhooks

Get webhooks

Get webhooks for a project.

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

api_instance = Iterable::WebhooksApi.new

begin
  #Get webhooks
  result = api_instance.get_webhooks
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling WebhooksApi->get_webhooks: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetWebhooksResponse**](GetWebhooksResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update_webhook**
> ApiWebhookResponse update_webhook(body)

Update webhook

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

api_instance = Iterable::WebhooksApi.new
body = Iterable::ApiWebhookModel.new # ApiWebhookModel | Only the specified fields will be updated


begin
  #Update webhook
  result = api_instance.update_webhook(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling WebhooksApi->update_webhook: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiWebhookModel**](ApiWebhookModel.md)| Only the specified fields will be updated | 

### Return type

[**ApiWebhookResponse**](ApiWebhookResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



