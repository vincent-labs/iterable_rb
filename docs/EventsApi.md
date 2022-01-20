# Iterable::EventsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**in_app_consume**](EventsApi.md#in_app_consume) | **POST** /api/events/inAppConsume | Consume or delete an in-app message
[**track**](EventsApi.md#track) | **POST** /api/events/track | Track an event
[**track_bulk**](EventsApi.md#track_bulk) | **POST** /api/events/trackBulk | Bulk track events
[**track_in_app_click**](EventsApi.md#track_in_app_click) | **POST** /api/events/trackInAppClick | Track an in-app message click
[**track_in_app_close**](EventsApi.md#track_in_app_close) | **POST** /api/events/trackInAppClose | Track the closing of an in-app message
[**track_in_app_delivery**](EventsApi.md#track_in_app_delivery) | **POST** /api/events/trackInAppDelivery | Track the delivery of an in-app message
[**track_in_app_open**](EventsApi.md#track_in_app_open) | **POST** /api/events/trackInAppOpen | Track an in-app message open
[**track_push_open**](EventsApi.md#track_push_open) | **POST** /api/events/trackPushOpen | Track a mobile push open
[**track_web_push_click**](EventsApi.md#track_web_push_click) | **POST** /api/events/trackWebPushClick | Track a web push click
[**user_events**](EventsApi.md#user_events) | **GET** /api/events/{email} | Get user events
[**user_events_by_user_id**](EventsApi.md#user_events_by_user_id) | **GET** /api/events/byUserId/{userId} | Get user events by userId

# **in_app_consume**
> IterableApiResponse in_app_consume(body)

Consume or delete an in-app message

Consumes or deletes an in-app message from the server. Use this API if your app does not use one of Iterable’s mobile SDKs, since they call it automatically. If an incoming in-app message is not configured to use the mobile inbox, use this API to \"consume\" it from the server queue after the user sees it. Otherwise, call this API when the user explicitly deletes an inbox-enabled message (by clicking a delete button in its content, swiping it in the inbox, etc.). If you pass a deleteAction value to this endpoint, Iterable generates an inAppDelete event; otherwise, it does not.

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

api_instance = Iterable::EventsApi.new
body = Iterable::InAppConsumeRequest.new # InAppConsumeRequest | In-app notification to consume


begin
  #Consume or delete an in-app message
  result = api_instance.in_app_consume(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->in_app_consume: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InAppConsumeRequest**](InAppConsumeRequest.md)| In-app notification to consume | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track**
> IterableApiResponse track(body)

Track an event

Events are created asynchronously and <b>processed separately from single event (non-bulk) endpoint</b>. Thus, if you need to make sure events are tracked in order, it is recommended that all of them are sent to the same endpoint (either bulk or non-bulk). <br/>Please note there is a soft limit (default is 8,000) on the number of unique fields a custom event can have. For events of the same name, identically named data fields must be of the same type.<br/><b>Rate limit</b>: 2000 requests/second, per project.

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

api_instance = Iterable::EventsApi.new
body = Iterable::TrackRequest.new # TrackRequest | Event to track


begin
  #Track an event
  result = api_instance.track(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackRequest**](TrackRequest.md)| Event to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_bulk**
> BulkTrackResponse track_bulk(body)

Bulk track events

Events are created asynchronously and <b>processed separately from single event (non-bulk) endpoint</b>. Thus, if you need to make sure events are tracked in order, it is recommended that all of them are sent to the same endpoint (either bulk or non-bulk). <br /> Please note there is a soft limit (default is 8,000) on the number of unique fields a custom event can have. For events of the same name, identically named data fields must be of the same type.<br/><b>Rate limit</b>: 10 requests/second, per project.

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

api_instance = Iterable::EventsApi.new
body = Iterable::BulkTrackRequest.new # BulkTrackRequest | Events to track


begin
  #Bulk track events
  result = api_instance.track_bulk(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_bulk: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkTrackRequest**](BulkTrackRequest.md)| Events to track | 

### Return type

[**BulkTrackResponse**](BulkTrackResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_in_app_click**
> IterableApiResponse track_in_app_click(body)

Track an in-app message click

Creates an inAppClick event for the specified user, message, and URL. When not using one of Iterable’s mobile SDKs, call this endpoint when a user taps on a button or link in an in-app message.

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

api_instance = Iterable::EventsApi.new
body = Iterable::InAppClickRequest.new # InAppClickRequest | In-app click to track


begin
  #Track an in-app message click
  result = api_instance.track_in_app_click(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_in_app_click: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InAppClickRequest**](InAppClickRequest.md)| In-app click to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_in_app_close**
> IterableApiResponse track_in_app_close(body)

Track the closing of an in-app message

Creates an inAppClose event for a specific user and in-app message. When not using Iterable's mobile SDKs, call this endpoint to indicate that the user tapped a close button, link or back button to close a particular in app-message.

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

api_instance = Iterable::EventsApi.new
body = Iterable::InAppCloseRequest.new # InAppCloseRequest | In-app close to track


begin
  #Track the closing of an in-app message
  result = api_instance.track_in_app_close(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_in_app_close: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InAppCloseRequest**](InAppCloseRequest.md)| In-app close to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_in_app_delivery**
> IterableApiResponse track_in_app_delivery(body)

Track the delivery of an in-app message

Creates an inAppDelivery event for a specific user, device, and message. When not using Iterable's mobile SDKs, call this endpoint to indicate that a particular message has been delivered to a particular device for a particular user. Take care not to call this endpoint multiple times for the same message/device/user combination.

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

api_instance = Iterable::EventsApi.new
body = Iterable::InAppDeliveryRequest.new # InAppDeliveryRequest | In-app delivery to track


begin
  #Track the delivery of an in-app message
  result = api_instance.track_in_app_delivery(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_in_app_delivery: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InAppDeliveryRequest**](InAppDeliveryRequest.md)| In-app delivery to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_in_app_open**
> IterableApiResponse track_in_app_open(body)

Track an in-app message open

Creates an inAppOpen event for the specified user and message, and marks the message as having been read. When not using one of Iterable’s mobile SDKs, call this endpoint when a mobile app displays an in-app message to a user.

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

api_instance = Iterable::EventsApi.new
body = Iterable::InAppOpenRequest.new # InAppOpenRequest | In-app open to track


begin
  #Track an in-app message open
  result = api_instance.track_in_app_open(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_in_app_open: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InAppOpenRequest**](InAppOpenRequest.md)| In-app open to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_push_open**
> IterableApiResponse track_push_open(body)

Track a mobile push open

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

api_instance = Iterable::EventsApi.new
body = Iterable::TrackPushOpenRequest.new # TrackPushOpenRequest | Push open to track


begin
  #Track a mobile push open
  result = api_instance.track_push_open(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_push_open: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackPushOpenRequest**](TrackPushOpenRequest.md)| Push open to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **track_web_push_click**
> IterableApiResponse track_web_push_click(body)

Track a web push click

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

api_instance = Iterable::EventsApi.new
body = Iterable::WebPushClickEventRequest.new # WebPushClickEventRequest | Web Push click to track


begin
  #Track a web push click
  result = api_instance.track_web_push_click(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->track_web_push_click: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**WebPushClickEventRequest**](WebPushClickEventRequest.md)| Web Push click to track | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **user_events**
> GetEventsResponse user_events(email, opts)

Get user events

Get events for a specific user. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::EventsApi.new
email = 'email_example' # String | Email of the user whose events you are retrieving.
opts = { 
  limit: 30 # Integer | The number of events to retrieve.  (Max is 200)
}

begin
  #Get user events
  result = api_instance.user_events(email, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->user_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| Email of the user whose events you are retrieving. | 
 **limit** | **Integer**| The number of events to retrieve.  (Max is 200) | [optional] [default to 30]

### Return type

[**GetEventsResponse**](GetEventsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **user_events_by_user_id**
> GetEventsResponse user_events_by_user_id(user_id, opts)

Get user events by userId

Get events for a specific user by userId. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::EventsApi.new
user_id = 'user_id_example' # String | UserId of the user whose events you are retrieving.
opts = { 
  limit: 30 # Integer | The number of events to retrieve.  (Max is 200)
}

begin
  #Get user events by userId
  result = api_instance.user_events_by_user_id(user_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling EventsApi->user_events_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| UserId of the user whose events you are retrieving. | 
 **limit** | **Integer**| The number of events to retrieve.  (Max is 200) | [optional] [default to 30]

### Return type

[**GetEventsResponse**](GetEventsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



