# Iterable::SubscriptionsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_subscription_action**](SubscriptionsApi.md#bulk_subscription_action) | **PUT** /api/subscriptions/{subscriptionGroup}/{subscriptionGroupId} | Bulk subscription action on a list of users
[**subscribe_single_user**](SubscriptionsApi.md#subscribe_single_user) | **PATCH** /api/subscriptions/{subscriptionGroup}/{subscriptionGroupId}/user/{userEmail} | Subscribe a single user
[**subscribe_single_user_by_user_id**](SubscriptionsApi.md#subscribe_single_user_by_user_id) | **PATCH** /api/subscriptions/{subscriptionGroup}/{subscriptionGroupId}/byUserId/{userId} | Subscribe a single user by their userId
[**unsubscribe_single_user**](SubscriptionsApi.md#unsubscribe_single_user) | **DELETE** /api/subscriptions/{subscriptionGroup}/{subscriptionGroupId}/user/{userEmail} | Unsubscribe a single user
[**unsubscribe_single_user_by_user_id**](SubscriptionsApi.md#unsubscribe_single_user_by_user_id) | **DELETE** /api/subscriptions/{subscriptionGroup}/{subscriptionGroupId}/byUserId/{userId} | Unsubscribe a single user by userId

# **bulk_subscription_action**
> IterableApiResponse bulk_subscription_action(bodyactionsubscription_groupsubscription_group_id)

Bulk subscription action on a list of users

Update a subscription group for a bulk number of users. All users will have the same event on the given subscriptionGroup. To enable this API, please contact your CSM.

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

api_instance = Iterable::SubscriptionsApi.new
body = Iterable::BulkSubscriptionActionRequest.new # BulkSubscriptionActionRequest | user email
action = 'subscribe' # String | subscribe or unsubscribe
subscription_group = 'subscription_group_example' # String | Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
subscription_group_id = 789 # Integer | Subscription Group Id [Numeric]


begin
  #Bulk subscription action on a list of users
  result = api_instance.bulk_subscription_action(bodyactionsubscription_groupsubscription_group_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SubscriptionsApi->bulk_subscription_action: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkSubscriptionActionRequest**](BulkSubscriptionActionRequest.md)| user email | 
 **action** | **String**| subscribe or unsubscribe | [default to subscribe]
 **subscription_group** | **String**| Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive] | 
 **subscription_group_id** | **Integer**| Subscription Group Id [Numeric] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **subscribe_single_user**
> IterableApiResponse subscribe_single_user(subscription_group, subscription_group_id, user_email)

Subscribe a single user

Updates a user to be subscribed to the provided subscription group entity. <br>To enable this API, please contact your CSM.

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

api_instance = Iterable::SubscriptionsApi.new
subscription_group = 'subscription_group_example' # String | Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
subscription_group_id = 789 # Integer | Subscription Group Id [Numeric]
user_email = 'user_email_example' # String | User's Email [Alphanumeric]


begin
  #Subscribe a single user
  result = api_instance.subscribe_single_user(subscription_group, subscription_group_id, user_email)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SubscriptionsApi->subscribe_single_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_group** | **String**| Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive] | 
 **subscription_group_id** | **Integer**| Subscription Group Id [Numeric] | 
 **user_email** | **String**| User&#x27;s Email [Alphanumeric] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **subscribe_single_user_by_user_id**
> IterableApiResponse subscribe_single_user_by_user_id(subscription_group, subscription_group_id, user_id)

Subscribe a single user by their userId

Updates a user to be subscribed to the provided subscription group entity. <br>To enable this API, please contact your CSM.

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

api_instance = Iterable::SubscriptionsApi.new
subscription_group = 'subscription_group_example' # String | Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
subscription_group_id = 789 # Integer | Subscription Group Id [Numeric]
user_id = 'user_id_example' # String | User's userId


begin
  #Subscribe a single user by their userId
  result = api_instance.subscribe_single_user_by_user_id(subscription_group, subscription_group_id, user_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SubscriptionsApi->subscribe_single_user_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_group** | **String**| Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive] | 
 **subscription_group_id** | **Integer**| Subscription Group Id [Numeric] | 
 **user_id** | **String**| User&#x27;s userId | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **unsubscribe_single_user**
> IterableApiResponse unsubscribe_single_user(subscription_group, subscription_group_id, user_email)

Unsubscribe a single user

Updates a user to be unsubscribed to the provided subscription group entity. <br>To enable this API, please contact your CSM.

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

api_instance = Iterable::SubscriptionsApi.new
subscription_group = 'subscription_group_example' # String | Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
subscription_group_id = 789 # Integer | Subscription Group Id [Numeric]
user_email = 'user_email_example' # String | User's Email [Alphanumeric]


begin
  #Unsubscribe a single user
  result = api_instance.unsubscribe_single_user(subscription_group, subscription_group_id, user_email)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SubscriptionsApi->unsubscribe_single_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_group** | **String**| Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive] | 
 **subscription_group_id** | **Integer**| Subscription Group Id [Numeric] | 
 **user_email** | **String**| User&#x27;s Email [Alphanumeric] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **unsubscribe_single_user_by_user_id**
> IterableApiResponse unsubscribe_single_user_by_user_id(subscription_group, subscription_group_id, user_id)

Unsubscribe a single user by userId

Updates a user to be unsubscribed to the provided subscription group entity. <br>To enable this API, please contact your CSM.

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

api_instance = Iterable::SubscriptionsApi.new
subscription_group = 'subscription_group_example' # String | Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
subscription_group_id = 789 # Integer | Subscription Group Id [Numeric]
user_id = 'user_id_example' # String | User's userId


begin
  #Unsubscribe a single user by userId
  result = api_instance.unsubscribe_single_user_by_user_id(subscription_group, subscription_group_id, user_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling SubscriptionsApi->unsubscribe_single_user_by_user_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **subscription_group** | **String**| Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive] | 
 **subscription_group_id** | **Integer**| Subscription Group Id [Numeric] | 
 **user_id** | **String**| User&#x27;s userId | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



