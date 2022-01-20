# Iterable::SMSApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](SMSApi.md#cancel) | **POST** /api/sms/cancel | Cancel an SMS to a user
[**target**](SMSApi.md#target) | **POST** /api/sms/target | Send SMS notification to user

# **cancel**
> IterableApiResponse cancel(body)

Cancel an SMS to a user

Cancel an SMS to a specific user. Must include either an email address AND campaignId, or just a scheduledMessageId.

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

api_instance = Iterable::SMSApi.new
body = Iterable::CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired.new # CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired | Email and Campaign ID


begin
  #Cancel an SMS to a user
  result = api_instance.cancel(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SMSApi->cancel: #{e}"
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

Send SMS notification to user

Send an SMS notification to a specific user. Note that this API is typically used for transactional messaging. Request data fields will override user profile data fields.A reference to the user profile is provided via the 'profile' field, to help resolve field collisions.

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

api_instance = Iterable::SMSApi.new
body = Iterable::TargetSMSRequest.new # TargetSMSRequest | Recipient and email ID


begin
  #Send SMS notification to user
  result = api_instance.target(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SMSApi->target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TargetSMSRequest**](TargetSMSRequest.md)| Recipient and email ID | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



