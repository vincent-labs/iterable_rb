# Iterable::PushApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](PushApi.md#cancel) | **POST** /api/push/cancel | Cancel a push notification to a user
[**target**](PushApi.md#target) | **POST** /api/push/target | Send push notification to user

# **cancel**
> IterableApiResponse cancel(body)

Cancel a push notification to a user

Cancel a push notification to a specific user. Must include either an email address AND campaignId, or just a scheduledMessageId.

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

api_instance = Iterable::PushApi.new
body = Iterable::CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired.new # CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired | Email and Campaign ID


begin
  #Cancel a push notification to a user
  result = api_instance.cancel(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling PushApi->cancel: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired**](CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired.md)| Email and Campaign ID | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **target**
> IterableApiResponse target(body)

Send push notification to user

Send a push notification to a specific user. Request data fields will override user profile data fields. A reference to the user profile is provided via the 'profile' field, to help resolve field collisions.

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

api_instance = Iterable::PushApi.new
body = Iterable::TargetPushRequest.new # TargetPushRequest | Recipient and email id


begin
  #Send push notification to user
  result = api_instance.target(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling PushApi->target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TargetPushRequest**](TargetPushRequest.md)| Recipient and email id | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



