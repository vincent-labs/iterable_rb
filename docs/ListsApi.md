# Iterable::ListsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**create**](ListsApi.md#create) | **POST** /api/lists | Create a static list
[**delete**](ListsApi.md#delete) | **DELETE** /api/lists/{listId} | Delete a static list
[**get_list_count**](ListsApi.md#get_list_count) | **GET** /api/lists/{listId}/size | Get count of users in list
[**get_lists**](ListsApi.md#get_lists) | **GET** /api/lists | Get lists
[**get_lists_0**](ListsApi.md#get_lists_0) | **GET** /api/lists/getUsers | Get users in a list
[**subscribe**](ListsApi.md#subscribe) | **POST** /api/lists/subscribe | Add subscribers to list
[**unsubscribe**](ListsApi.md#unsubscribe) | **POST** /api/lists/unsubscribe | Remove users from a list

# **create**
> CreateListResponse create(body)

Create a static list

Create a new static list.

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

api_instance = Iterable::ListsApi.new
body = Iterable::CreateListRequest.new # CreateListRequest | name


begin
  #Create a static list
  result = api_instance.create(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->create: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CreateListRequest**](CreateListRequest.md)| name | 

### Return type

[**CreateListResponse**](CreateListResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **delete**
> IterableApiResponse delete(list_id)

Delete a static list

Delete a static list by listId.

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

api_instance = Iterable::ListsApi.new
list_id = 789 # Integer | list id


begin
  #Delete a static list
  result = api_instance.delete(list_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| list id | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_list_count**
> String get_list_count(list_id)

Get count of users in list

Get the number of users within a list. <b>Rate limit</b>: 5 requests/minute, per project.

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

api_instance = Iterable::ListsApi.new
list_id = 789 # Integer | list id


begin
  #Get count of users in list
  result = api_instance.get_list_count(list_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->get_list_count: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| list id | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_lists**
> GetListsResponse get_lists

Get lists

Get all lists within a project. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::ListsApi.new

begin
  #Get lists
  result = api_instance.get_lists
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->get_lists: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**GetListsResponse**](GetListsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_lists_0**
> String get_lists_0(list_id)

Get users in a list

Get all users within a list. <b>Rate limit</b>: 5 requests/minute, per project.

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

api_instance = Iterable::ListsApi.new
list_id = 789 # Integer | list id


begin
  #Get users in a list
  result = api_instance.get_lists_0(list_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->get_lists_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **list_id** | **Integer**| list id | 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/plain



# **subscribe**
> ListResponse subscribe(body)

Add subscribers to list

Add specific subscribers to a list.

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

api_instance = Iterable::ListsApi.new
body = Iterable::SubscribeRequest.new # SubscribeRequest | email list id and list of emails


begin
  #Add subscribers to list
  result = api_instance.subscribe(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->subscribe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**SubscribeRequest**](SubscribeRequest.md)| email list id and list of emails | 

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **unsubscribe**
> ListResponse unsubscribe(body)

Remove users from a list

Remove specific users from a list.

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

api_instance = Iterable::ListsApi.new
body = Iterable::UnsubscribeRequest.new # UnsubscribeRequest | email list id and list of emails


begin
  #Remove users from a list
  result = api_instance.unsubscribe(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ListsApi->unsubscribe: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UnsubscribeRequest**](UnsubscribeRequest.md)| email list id and list of emails | 

### Return type

[**ListResponse**](ListResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



