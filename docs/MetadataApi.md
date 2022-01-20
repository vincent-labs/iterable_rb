# Iterable::MetadataApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**delete**](MetadataApi.md#delete) | **DELETE** /api/metadata/{table} | Delete a table
[**delete_0**](MetadataApi.md#delete_0) | **DELETE** /api/metadata/{table}/{key} | Delete a single metadata key/value
[**get**](MetadataApi.md#get) | **GET** /api/metadata/{table}/{key} | Get the metadata value of a single key
[**list**](MetadataApi.md#list) | **GET** /api/metadata/{table} | List keys in a table
[**list_tables**](MetadataApi.md#list_tables) | **GET** /api/metadata | List available tables
[**put**](MetadataApi.md#put) | **PUT** /api/metadata/{table}/{key} | Create or replace metadata

# **delete**
> IterableApiResponse delete(table)

Delete a table

Asynchronous. Deletes the table. 200 response indicates a valid request that will be processed; table may not be deleted immediately. Use GET /api/metadata/{table} to verify completion.

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

api_instance = Iterable::MetadataApi.new
table = 'table_example' # String | Table name [Alphanumeric, case insensitive]


begin
  #Delete a table
  result = api_instance.delete(table)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->delete: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table name [Alphanumeric, case insensitive] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **delete_0**
> IterableApiResponse delete_0(table, key)

Delete a single metadata key/value

Asynchronous. Deletes the specified item from the table. 200 response indicates a valid request that will be processed; data may not be deleted immediately. Use GET /api/metadata/{table}/{key} to verify completion.

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

api_instance = Iterable::MetadataApi.new
table = 'table_example' # String | Table name [Alphanumeric, case insensitive]
key = 'key_example' # String | Metadata key [Alphanumeric, case sensitive]


begin
  #Delete a single metadata key/value
  result = api_instance.delete_0(table, key)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->delete_0: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table name [Alphanumeric, case insensitive] | 
 **key** | **String**| Metadata key [Alphanumeric, case sensitive] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get**
> MetadataWithProperties get(table, key)

Get the metadata value of a single key

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

api_instance = Iterable::MetadataApi.new
table = 'table_example' # String | Table name [Alphanumeric, case insensitive]
key = 'key_example' # String | Metadata key [Alphanumeric, case sensitive]


begin
  #Get the metadata value of a single key
  result = api_instance.get(table, key)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->get: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table name [Alphanumeric, case insensitive] | 
 **key** | **String**| Metadata key [Alphanumeric, case sensitive] | 

### Return type

[**MetadataWithProperties**](MetadataWithProperties.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list**
> Listing list(table, opts)

List keys in a table

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

api_instance = Iterable::MetadataApi.new
table = 'table_example' # String | Table name [Alphanumeric, case insensitive]
opts = { 
  next_marker: 'None' # String | next result set id; returned by previous search if more hits exist
}

begin
  #List keys in a table
  result = api_instance.list(table, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->list: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **table** | **String**| Table name [Alphanumeric, case insensitive] | 
 **next_marker** | **String**| next result set id; returned by previous search if more hits exist | [optional] [default to None]

### Return type

[**Listing**](Listing.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list_tables**
> ListMetadataTablesResponse list_tables

List available tables

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

api_instance = Iterable::MetadataApi.new

begin
  #List available tables
  result = api_instance.list_tables
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->list_tables: #{e}"
end
```

### Parameters
This endpoint does not need any parameter.

### Return type

[**ListMetadataTablesResponse**](ListMetadataTablesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **put**
> IterableApiResponse put(bodytablekey)

Create or replace metadata

Asynchronous. Creates or replaces the item associated with the specified key. 200 response indicates a valid request that will be processed; updates may not be made immediately. Use GET /api/metadata/{table}/{key} to verify completion.

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

api_instance = Iterable::MetadataApi.new
body = Iterable::PutMetadataRequest.new # PutMetadataRequest | Metadata properties
table = 'table_example' # String | Table name [Alphanumeric, case insensitive]
key = 'key_example' # String | Metadata key [Alphanumeric, case sensitive]


begin
  #Create or replace metadata
  result = api_instance.put(bodytablekey)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling MetadataApi->put: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**PutMetadataRequest**](PutMetadataRequest.md)| Metadata properties | 
 **table** | **String**| Table name [Alphanumeric, case insensitive] | 
 **key** | **String**| Metadata key [Alphanumeric, case sensitive] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



