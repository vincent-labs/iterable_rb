# Iterable::EmailApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](EmailApi.md#cancel) | **POST** /api/email/cancel | Cancel an email to a user
[**target**](EmailApi.md#target) | **POST** /api/email/target | Send an email to an email address
[**view_in_browser**](EmailApi.md#view_in_browser) | **GET** /api/email/viewInBrowser | View a previously sent email

# **cancel**
> IterableApiResponse cancel(body)

Cancel an email to a user

Cancel an email to a specific user. Must include either an email address AND campaignId, or just a scheduledMessageId.

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

api_instance = Iterable::EmailApi.new
body = Iterable::CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired.new # CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired | Email and Campaign ID


begin
  #Cancel an email to a user
  result = api_instance.cancel(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EmailApi->cancel: #{e}"
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

Send an email to an email address

Send an email to a specific email address. Request data fields will override user profile data fields. A reference to the user profile is provided via the 'profile' field, to help resolve field collisions.

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

api_instance = Iterable::EmailApi.new
body = Iterable::TargetEmailRequest.new # TargetEmailRequest | Recipient and email id


begin
  #Send an email to an email address
  result = api_instance.target(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EmailApi->target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TargetEmailRequest**](TargetEmailRequest.md)| Recipient and email id | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **view_in_browser**
> String view_in_browser(message_id, opts)

View a previously sent email

View a rendered version of a previously sent email. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::EmailApi.new
message_id = 'message_id_example' # String | id of sent message
opts = { 
  email: 'email_example', # String | user's email
  user_id: 'user_id_example' # String | user's userId
}

begin
  #View a previously sent email
  result = api_instance.view_in_browser(message_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EmailApi->view_in_browser: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **message_id** | **String**| id of sent message | 
 **email** | **String**| user&#x27;s email | [optional] 
 **user_id** | **String**| user&#x27;s userId | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



