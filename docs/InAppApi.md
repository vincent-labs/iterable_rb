# Iterable::InAppApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**cancel**](InAppApi.md#cancel) | **POST** /api/inApp/cancel | Cancel a scheduled in-app message
[**get_messages**](InAppApi.md#get_messages) | **GET** /api/inApp/getMessages | Get a user&#x27;s in-app messages
[**target**](InAppApi.md#target) | **POST** /api/inApp/target | Send an in-app notification to a user

# **cancel**
> IterableApiResponse cancel(body)

Cancel a scheduled in-app message

Cancels the sending of a scheduled in-app message to a specific user.

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

api_instance = Iterable::InAppApi.new
body = Iterable::CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired.new # CancelScheduledMessageRequestCampaignIdORScheduledMessageIdAreRequired | Email and Campaign ID


begin
  #Cancel a scheduled in-app message
  result = api_instance.cancel(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling InAppApi->cancel: #{e}"
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



# **get_messages**
> ApiInAppMessagesResponse get_messages(count, opts)

Get a user's in-app messages

Get a user's in-app messages. This endpoint always returns the user's non-selective (not app-specific) in-app messages; to also fetch app-specific in-app messages, include a <code>packageName</code> and <code>platform</code> in the request. This endpoint returns new messages and messages that have already been saved to a mobile inbox, and each message has a <code>read</code> field to indicate whether or not it has already been seen.

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

api_instance = Iterable::InAppApi.new
count = 56 # Integer | The number of in-app messages to fetch.
opts = { 
  email: 'email_example', # String | The email address of the user for which to fetch in-app messages. Specify either an email or a userId.
  user_id: 'user_id_example', # String | The userId of the user for which to fetch in-app messages. Specify either an email or a userId.
  platform: 'None', # String | The platform of the app for which to retrieve selective in-app messages: iOS or Android (case-sensitive).
  sdk_version: 'None', # String | Iterable SDK version (e.g., 6.2.17)
  package_name: 'None' # String | The package name of the app for which to retrieve selective in-app messages.
}

begin
  #Get a user's in-app messages
  result = api_instance.get_messages(count, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling InAppApi->get_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **count** | **Integer**| The number of in-app messages to fetch. | 
 **email** | **String**| The email address of the user for which to fetch in-app messages. Specify either an email or a userId. | [optional] 
 **user_id** | **String**| The userId of the user for which to fetch in-app messages. Specify either an email or a userId. | [optional] 
 **platform** | **String**| The platform of the app for which to retrieve selective in-app messages: iOS or Android (case-sensitive). | [optional] [default to None]
 **sdk_version** | **String**| Iterable SDK version (e.g., 6.2.17) | [optional] [default to None]
 **package_name** | **String**| The package name of the app for which to retrieve selective in-app messages. | [optional] [default to None]

### Return type

[**ApiInAppMessagesResponse**](ApiInAppMessagesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **target**
> IterableApiResponse target(body)

Send an in-app notification to a user

Send an in-app notification to a specific user. Request data fields will override user profile data fields. A reference to the user profile is provided via the 'profile' field, to help resolve field collisions.

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

api_instance = Iterable::InAppApi.new
body = Iterable::TargetInAppRequest.new # TargetInAppRequest | Recipient and email id


begin
  #Send an in-app notification to a user
  result = api_instance.target(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling InAppApi->target: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TargetInAppRequest**](TargetInAppRequest.md)| Recipient and email id | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



