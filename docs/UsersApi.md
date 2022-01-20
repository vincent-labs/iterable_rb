# Iterable::UsersApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_update_subscriptions**](UsersApi.md#bulk_update_subscriptions) | **POST** /api/users/bulkUpdateSubscriptions | Bulk update user subscriptions
[**bulk_update_user**](UsersApi.md#bulk_update_user) | **POST** /api/users/bulkUpdate | Bulk update user data
[**delete**](UsersApi.md#delete) | **DELETE** /api/users/{email} | Delete a user by email
[**delete_0**](UsersApi.md#delete_0) | **DELETE** /api/users/byUserId/{userId} | Delete user by userId
[**disable_device**](UsersApi.md#disable_device) | **POST** /api/users/disableDevice | Disable pushes to a mobile device
[**export_project_forgotten_users**](UsersApi.md#export_project_forgotten_users) | **GET** /api/users/forgotten | Get hashed forgotten users in compliance with GDPR
[**forget**](UsersApi.md#forget) | **POST** /api/users/forget | Forget a user in compliance with GDPR
[**get_sent_messages**](UsersApi.md#get_sent_messages) | **GET** /api/users/getSentMessages | Get messages sent to a user
[**get_user**](UsersApi.md#get_user) | **GET** /api/users/getByEmail | Get a user by email
[**get_user_0**](UsersApi.md#get_user_0) | **GET** /api/users/{email} | Get a user by email
[**get_user_by_id**](UsersApi.md#get_user_by_id) | **GET** /api/users/byUserId | Get a user by userId
[**get_user_by_id_0**](UsersApi.md#get_user_by_id_0) | **GET** /api/users/byUserId/{userId} | Get a user by userId
[**get_user_fields**](UsersApi.md#get_user_fields) | **GET** /api/users/getFields | Get all user fields
[**invalidate_jwt**](UsersApi.md#invalidate_jwt) | **POST** /api/auth/jwts/invalidate | Invalidate all JWTs issued for a user
[**register_browser_token**](UsersApi.md#register_browser_token) | **POST** /api/users/registerBrowserToken | Register a browser token for web push
[**register_device_token**](UsersApi.md#register_device_token) | **POST** /api/users/registerDeviceToken | Register a device token for push
[**unforget**](UsersApi.md#unforget) | **POST** /api/users/unforget | Unforget a user in compliance with GDPR
[**update_email**](UsersApi.md#update_email) | **POST** /api/users/updateEmail | Update user email
[**update_subscriptions**](UsersApi.md#update_subscriptions) | **POST** /api/users/updateSubscriptions | Update user subscriptions
[**update_user**](UsersApi.md#update_user) | **POST** /api/users/update | Update user data

# **bulk_update_subscriptions**
> BulkUpdateSubscriptionsResponse bulk_update_subscriptions(body)

Bulk update user subscriptions

<b>WARNING</b>: This will overwrite (instead of merging) existing data if the provided fields are not null.

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

api_instance = Iterable::UsersApi.new
body = Iterable::BulkUpdateSubscriptionsRequest.new # BulkUpdateSubscriptionsRequest | Bulk subscriptions to update


begin
  #Bulk update user subscriptions
  result = api_instance.bulk_update_subscriptions(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->bulk_update_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkUpdateSubscriptionsRequest**](BulkUpdateSubscriptionsRequest.md)| Bulk subscriptions to update | 

### Return type

[**BulkUpdateSubscriptionsResponse**](BulkUpdateSubscriptionsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **bulk_update_user**
> ListResponse bulk_update_user(body)

Bulk update user data

Bulk update user data. This will add the data if it doesn't exist yet. Data will be merged; missing fields are not deleted. Changing emailListIds, unsubscribedChannelIds, messageTypeIds through this endpoint will <b>NOT</b> generate unsubscribe events. However, the bulkUpdateSubscription will generate unsubscribe events. Also, note that there is a soft limit on the number of unique fields a user can have (default is 1,000). Types of data fields must match the types sent in previous requests, across all data fields in the project.<br>Note that bulk updates are processed separately from single-user calls (update, updateEmail, updateSubscriptions, etc). If the same user is modified using both bulk update and single-user calls made near the same time, the results may be inconsistent. It's important to use either only single-user calls or only bulk update calls around the same time for any given user.<br><b>Rate limit</b>: 5 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
body = Iterable::BulkUpdateUsersRequest.new # BulkUpdateUsersRequest | Users to update


begin
  #Bulk update user data
  result = api_instance.bulk_update_user(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->bulk_update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**BulkUpdateUsersRequest**](BulkUpdateUsersRequest.md)| Users to update | 

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **delete**
> IterableApiResponse delete(email)

Delete a user by email

Asynchronous. Delete a specific user by email address. <b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
email = 'email_example' # String | email


begin
  #Delete a user by email
  result = api_instance.delete(email)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| email | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **delete_0**
> IterableApiResponse delete_0(user_id)

Delete user by userId

Asynchronous. Delete user by a userId. This will delete multiple users if they happen to share the same userId. <b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
user_id = 'user_id_example' # String | 


begin
  #Delete user by userId
  result = api_instance.delete_0(user_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->delete_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **disable_device**
> IterableApiResponse disable_device(opts)

Disable pushes to a mobile device

Manually disable push notifications to a device until it comes online again.

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

api_instance = Iterable::UsersApi.new
opts = { 
  body: Iterable::DisableDeviceRequest.new # DisableDeviceRequest | Request to disable device
}

begin
  #Disable pushes to a mobile device
  result = api_instance.disable_device(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->disable_device: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**DisableDeviceRequest**](DisableDeviceRequest.md)| Request to disable device | [optional] 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **export_project_forgotten_users**
> GetForgottenUserEmailsResponse export_project_forgotten_users

Get hashed forgotten users in compliance with GDPR

Get all hashed user emails that are currently in the blacklist. In order to calculate the hash, every email is lowercased, trimmed and hashed using SHA-256.<br><b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new

begin
  #Get hashed forgotten users in compliance with GDPR
  result = api_instance.export_project_forgotten_users
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->export_project_forgotten_users: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetForgottenUserEmailsResponse**](GetForgottenUserEmailsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **forget**
> IterableApiResponse forget(body)

Forget a user in compliance with GDPR

Delete the specified user's data from the Iterable project and prevent future data collection about them.<br><b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
body = Iterable::UserRequest.new # UserRequest | user's email to be added to blacklist.


begin
  #Forget a user in compliance with GDPR
  result = api_instance.forget(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->forget: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserRequest**](UserRequest.md)| user&#x27;s email to be added to blacklist. | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **get_sent_messages**
> GetSentMessagesResponse get_sent_messages(opts)

Get messages sent to a user

Get messages sent to a user by email address or user ID. Returns 10 by default, up to 1,000. <b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
opts = { 
  email: 'email_example', # String | user's email, either email or userId must be specified
  user_id: 'user_id_example', # String | user's userId, either email or userId must be specified
  limit: 10, # Integer | max number of messages to return (default: 10, max limit: 1000)
  campaign_ids: nil, # Array<Object> | only include messages from these campaigns
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | start date time (yyyy-MM-dd HH:mm:ss ZZ)
  end_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | end date time (yyyy-MM-dd HH:mm:ss ZZ)
  exclude_blast_campaigns: false, # BOOLEAN | exclude results coming from blast campaigns (ignored if campaignId is set)
  message_medium: 'message_medium_example' # String | only include messages of this type
}

begin
  #Get messages sent to a user
  result = api_instance.get_sent_messages(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_sent_messages: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| user&#x27;s email, either email or userId must be specified | [optional] 
 **user_id** | **String**| user&#x27;s userId, either email or userId must be specified | [optional] 
 **limit** | **Integer**| max number of messages to return (default: 10, max limit: 1000) | [optional] [default to 10]
 **campaign_ids** | [**Array&lt;Object&gt;**](Object.md)| only include messages from these campaigns | [optional] 
 **start_date_time** | **DateTime**| start date time (yyyy-MM-dd HH:mm:ss ZZ) | [optional] 
 **end_date_time** | **DateTime**| end date time (yyyy-MM-dd HH:mm:ss ZZ) | [optional] 
 **exclude_blast_campaigns** | **BOOLEAN**| exclude results coming from blast campaigns (ignored if campaignId is set) | [optional] [default to false]
 **message_medium** | **String**| only include messages of this type | [optional] 

### Return type

[**GetSentMessagesResponse**](GetSentMessagesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user**
> UserResponse get_user(opts)

Get a user by email

<b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
opts = { 
  email: 'email_example' # String | 
}

begin
  #Get a user by email
  result = api_instance.get_user(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user_0**
> UserResponse get_user_0(email)

Get a user by email

Get a user by their email address.<br><b>Note</b>: If the email address contains non-alphanumeric characters, please use the <a href=\"https://api.iterable.com/api/docs#users_getUser_0\"><tt>GET /api/users/getByEmail</tt></a> endpoint instead.<br><b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
email = 'email_example' # String | email


begin
  #Get a user by email
  result = api_instance.get_user_0(email)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_user_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| email | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user_by_id**
> UserResponse get_user_by_id(opts)

Get a user by userId

<b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
opts = { 
  user_id: 'user_id_example' # String | 
}

begin
  #Get a user by userId
  result = api_instance.get_user_by_id(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**|  | [optional] 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user_by_id_0**
> UserResponse get_user_by_id_0(user_id)

Get a user by userId

Get a user by your custom userId. <b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
user_id = 'user_id_example' # String | userId


begin
  #Get a user by userId
  result = api_instance.get_user_by_id_0(user_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_user_by_id_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **user_id** | **String**| userId | 

### Return type

[**UserResponse**](UserResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_user_fields**
> GetUserFieldsResponse get_user_fields

Get all user fields

Get all user fields within a project. <b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new

begin
  #Get all user fields
  result = api_instance.get_user_fields
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->get_user_fields: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetUserFieldsResponse**](GetUserFieldsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **invalidate_jwt**
> invalidate_jwt(body)

Invalidate all JWTs issued for a user

Invalidate all JWTs issued for a user before the current time or before the specified time.

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

api_instance = Iterable::UsersApi.new
body = Iterable::InvalidateJwtRequest.new # InvalidateJwtRequest | Invalid JWT request


begin
  #Invalidate all JWTs issued for a user
  api_instance.invalidate_jwt(body)
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->invalidate_jwt: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**InvalidateJwtRequest**](InvalidateJwtRequest.md)| Invalid JWT request | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: Not defined



# **register_browser_token**
> IterableApiResponse register_browser_token(body)

Register a browser token for web push

There is a limit of 500 browser tokens per user profile. This API will return 400 error code if the user already has 500 tokens or more.

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

api_instance = Iterable::UsersApi.new
body = Iterable::RegisterBrowserTokenRequest.new # RegisterBrowserTokenRequest | Request to register browser


begin
  #Register a browser token for web push
  result = api_instance.register_browser_token(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->register_browser_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterBrowserTokenRequest**](RegisterBrowserTokenRequest.md)| Request to register browser | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **register_device_token**
> IterableApiResponse register_device_token(body)

Register a device token for push

Register a device token for push. This will add the data if it doesn't exist yet. It will also update data fields on the device. Data will be merged; missing fields are not deleted. Also, note that there is a soft limit on the number of unique fields a user can have (default is 1,000). Types of data fields must match the types sent in previous requests, across all data fields in the project.<br><b>Limits</b>: There is a limit of 500 devices per user profile. This API will return 400 error code if the user already has 500 devices or more.<br><b>Rate limit</b>: 500 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
body = Iterable::RegisterDeviceTokenRequest.new # RegisterDeviceTokenRequest | Request to register device


begin
  #Register a device token for push
  result = api_instance.register_device_token(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->register_device_token: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**RegisterDeviceTokenRequest**](RegisterDeviceTokenRequest.md)| Request to register device | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **unforget**
> IterableApiResponse unforget(body)

Unforget a user in compliance with GDPR

Allow the Iterable project to resume collecting data about a previously forgotten user. Deleted data cannot be recovered.<br><b>Rate limit</b>: 3 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
body = Iterable::UserRequest.new # UserRequest | user's email to be removed from blacklist.


begin
  #Unforget a user in compliance with GDPR
  result = api_instance.unforget(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->unforget: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UserRequest**](UserRequest.md)| user&#x27;s email to be removed from blacklist. | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_email**
> IterableApiResponse update_email(body)

Update user email

Change a user's email address. All profile data and events will be migrated to the new email address.

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

api_instance = Iterable::UsersApi.new
body = Iterable::UpdateEmailRequest.new # UpdateEmailRequest | Update a user's email. All profile data and events will be migrated.


begin
  #Update user email
  result = api_instance.update_email(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->update_email: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateEmailRequest**](UpdateEmailRequest.md)| Update a user&#x27;s email. All profile data and events will be migrated. | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_subscriptions**
> IterableApiResponse update_subscriptions(body)

Update user subscriptions

Update user subscriptions. <b>NOTE</b>: Overwrites existing data if the field is provided and not null.

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

api_instance = Iterable::UsersApi.new
body = Iterable::UpdateSubscriptionsRequest.new # UpdateSubscriptionsRequest | Subscriptions to update


begin
  #Update user subscriptions
  result = api_instance.update_subscriptions(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->update_subscriptions: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateSubscriptionsRequest**](UpdateSubscriptionsRequest.md)| Subscriptions to update | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_user**
> IterableApiResponse update_user(body)

Update user data

Update user data or adds a user if none exists. Data is merged - missing fields are not deleted. Please note there is a soft limit (default: 1,000) on the number of unique fields users can have. Types of data fields must match the types sent in previous requests, across all data fields in the project.<br><b>Rate limit</b>: 500 requests/second, per project.

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

api_instance = Iterable::UsersApi.new
body = Iterable::ApiUserUpdateRequest.new # ApiUserUpdateRequest | user object


begin
  #Update user data
  result = api_instance.update_user(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling UsersApi->update_user: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiUserUpdateRequest**](ApiUserUpdateRequest.md)| user object | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



