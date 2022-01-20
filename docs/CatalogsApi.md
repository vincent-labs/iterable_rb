# Iterable::CatalogsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**bulk_delete_catalog_items**](CatalogsApi.md#bulk_delete_catalog_items) | **DELETE** /api/catalogs/{catalogName}/items | Bulk delete catalog items
[**bulk_update_catalog_items**](CatalogsApi.md#bulk_update_catalog_items) | **POST** /api/catalogs/{catalogName}/items | Bulk create catalog items
[**create_catalog**](CatalogsApi.md#create_catalog) | **POST** /api/catalogs/{catalogName} | Create a catalog
[**delete_catalog**](CatalogsApi.md#delete_catalog) | **DELETE** /api/catalogs/{catalogName} | Delete a catalog
[**delete_catalog_item**](CatalogsApi.md#delete_catalog_item) | **DELETE** /api/catalogs/{catalogName}/items/{itemId} | Delete a catalog item
[**get_catalog_item**](CatalogsApi.md#get_catalog_item) | **GET** /api/catalogs/{catalogName}/items/{itemId} | Get a specific catalog item
[**get_field_mappings**](CatalogsApi.md#get_field_mappings) | **GET** /api/catalogs/{catalogName}/fieldMappings | Get field mappings for a catalog
[**index_catalog_item**](CatalogsApi.md#index_catalog_item) | **PUT** /api/catalogs/{catalogName}/items/{itemId} | Create or replace a catalog item
[**list_catalog_items**](CatalogsApi.md#list_catalog_items) | **GET** /api/catalogs/{catalogName}/items | Get the catalog items for a catalog
[**list_catalogs**](CatalogsApi.md#list_catalogs) | **GET** /api/catalogs | Get catalog names
[**partial_update_catalog_item**](CatalogsApi.md#partial_update_catalog_item) | **PATCH** /api/catalogs/{catalogName}/items/{itemId} | Create or update a catalog item
[**update_field_types**](CatalogsApi.md#update_field_types) | **PUT** /api/catalogs/{catalogName}/fieldMappings | Set a catalog&#x27;s field mappings (data types)

# **bulk_delete_catalog_items**
> IterableApiResponse bulk_delete_catalog_items(bodycatalog_name)

Bulk delete catalog items

Asynchronous. Delete the specified catalog items from the catalog.

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

api_instance = Iterable::CatalogsApi.new
body = Iterable::CatalogBulkDeleteRequest.new # CatalogBulkDeleteRequest | Catalog bulk delete request
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Bulk delete catalog items
  result = api_instance.bulk_delete_catalog_items(bodycatalog_name)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->bulk_delete_catalog_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogBulkDeleteRequest**](CatalogBulkDeleteRequest.md)| Catalog bulk delete request | 
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **bulk_update_catalog_items**
> IterableApiResponse bulk_update_catalog_items(bodycatalog_name)

Bulk create catalog items

Asynchronous. Create up to 1000 catalog items with a single request. Each of a catalog's items must have a unique ID that contains only alphanumeric characters and dashes and has a maximum length of 255 characters. If the catalog already contains an item with the same ID as one provided in the request body, the item in the catalog will be completely overwritten, unless replaceUploadedFieldsOnly is set to true. Do not use periods in field names.

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

api_instance = Iterable::CatalogsApi.new
body = Iterable::CatalogBulkUploadRequest.new # CatalogBulkUploadRequest | Catalog bulk update request
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Bulk create catalog items
  result = api_instance.bulk_update_catalog_items(bodycatalog_name)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->bulk_update_catalog_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogBulkUploadRequest**](CatalogBulkUploadRequest.md)| Catalog bulk update request | 
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **create_catalog**
> IterableApiResponse create_catalog(catalog_name)

Create a catalog

Create a catalog. Each catalog in a project must have a unique name. Catalog names can be no longer than 255 characters and must contain only alphanumeric characters and dashes.

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Create a catalog
  result = api_instance.create_catalog(catalog_name)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->create_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **delete_catalog**
> IterableApiResponse delete_catalog(catalog_name)

Delete a catalog

Delete the catalog with the specified name.

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Delete a catalog
  result = api_instance.delete_catalog(catalog_name)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->delete_catalog: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **delete_catalog_item**
> IterableApiResponse delete_catalog_item(catalog_name, item_id)

Delete a catalog item

Asynchronous. Deletes the specified item from the catalog. Data may not be deleted immediately.

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]
item_id = 'item_id_example' # String | Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max]


begin
  #Delete a catalog item
  result = api_instance.delete_catalog_item(catalog_name, item_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->delete_catalog_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 
 **item_id** | **String**| Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_catalog_item**
> CatalogItemWithProperties get_catalog_item(catalog_name, item_id)

Get a specific catalog item

Get a specific catalog item from the given catalog.

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]
item_id = 'item_id_example' # String | Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max]


begin
  #Get a specific catalog item
  result = api_instance.get_catalog_item(catalog_name, item_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->get_catalog_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 
 **item_id** | **String**| Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max] | 

### Return type

[**CatalogItemWithProperties**](CatalogItemWithProperties.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_field_mappings**
> CatalogFieldMappingsResponse get_field_mappings(catalog_name)

Get field mappings for a catalog

Field mappings (field to data types) and undefined fields of a catalog

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Get field mappings for a catalog
  result = api_instance.get_field_mappings(catalog_name)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->get_field_mappings: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

[**CatalogFieldMappingsResponse**](CatalogFieldMappingsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **index_catalog_item**
> IterableApiResponse index_catalog_item(bodycatalog_nameitem_id)

Create or replace a catalog item

Asynchronous. Create or replace the specified catalog item in the given catalog. A catalog item's ID must be unique, contain only alphanumeric characters and dashes, and have a maximum length of 255 characters. If the catalog item already exists, it will be replaced by the value provided in the request body. Do not use periods in field names.

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

api_instance = Iterable::CatalogsApi.new
body = Iterable::CatalogIndexItemRequest.new # CatalogIndexItemRequest | Catalog item value
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]
item_id = 'item_id_example' # String | Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max]


begin
  #Create or replace a catalog item
  result = api_instance.index_catalog_item(bodycatalog_nameitem_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->index_catalog_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogIndexItemRequest**](CatalogIndexItemRequest.md)| Catalog item value | 
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 
 **item_id** | **String**| Catalog item id [Alphanumeric, dashes, case sensitive, 255 characters max] | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **list_catalog_items**
> GetCatalogItemsResponse list_catalog_items(catalog_name, opts)

Get the catalog items for a catalog

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

api_instance = Iterable::CatalogsApi.new
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]
opts = { 
  page: 56, # Integer | Page number to list (starting at 1).
  page_size: 56, # Integer | Number of results to display per page (defaults to 10).
  order_by: 'order_by_example', # String | Field by which results should be ordered. To also use the sortAscending parameter, this field must have a defined type.
  sort_ascending: true # BOOLEAN | Sort results by ascending (Defaults to false).
}

begin
  #Get the catalog items for a catalog
  result = api_instance.list_catalog_items(catalog_name, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->list_catalog_items: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 
 **page** | **Integer**| Page number to list (starting at 1). | [optional] 
 **page_size** | **Integer**| Number of results to display per page (defaults to 10). | [optional] 
 **order_by** | **String**| Field by which results should be ordered. To also use the sortAscending parameter, this field must have a defined type. | [optional] 
 **sort_ascending** | **BOOLEAN**| Sort results by ascending (Defaults to false). | [optional] 

### Return type

[**GetCatalogItemsResponse**](GetCatalogItemsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **list_catalogs**
> GetCatalogsResponse list_catalogs(opts)

Get catalog names

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

api_instance = Iterable::CatalogsApi.new
opts = { 
  page: 56, # Integer | Page number to list (starting at 1).
  page_size: 56 # Integer | Number of results to display per page (defaults to 10).
}

begin
  #Get catalog names
  result = api_instance.list_catalogs(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->list_catalogs: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **page** | **Integer**| Page number to list (starting at 1). | [optional] 
 **page_size** | **Integer**| Number of results to display per page (defaults to 10). | [optional] 

### Return type

[**GetCatalogsResponse**](GetCatalogsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **partial_update_catalog_item**
> IterableApiResponse partial_update_catalog_item(bodycatalog_nameitem_id)

Create or update a catalog item

Asynchronous. Create or update the specified catalog item in the given catalog. A catalog item's ID must be unique, contain only alphanumeric characters and dashes, and have a maximum length of 255 characters. If the catalog item already exists, its fields will be updated with the values provided in the request body. Previously existing fields not included in the request body will remain as is. Do not use periods in field names.

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

api_instance = Iterable::CatalogsApi.new
body = Iterable::CatalogUpdateItemRequest.new # CatalogUpdateItemRequest | Catalog item contents
catalog_name = 'catalog_name_example' # String | 
item_id = 'item_id_example' # String | 


begin
  #Create or update a catalog item
  result = api_instance.partial_update_catalog_item(bodycatalog_nameitem_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->partial_update_catalog_item: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogUpdateItemRequest**](CatalogUpdateItemRequest.md)| Catalog item contents | 
 **catalog_name** | **String**|  | 
 **item_id** | **String**|  | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_field_types**
> update_field_types(bodycatalog_name)

Set a catalog's field mappings (data types)

Set a catalog's field mappings (data types). After being set, a given field's data type may not be changed. Valid types: boolean, date, geo_location, long, double, object, and string.

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

api_instance = Iterable::CatalogsApi.new
body = Iterable::CatalogMappingsUpdateRequest.new # CatalogMappingsUpdateRequest | Catalog Field Types
catalog_name = 'catalog_name_example' # String | Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max]


begin
  #Set a catalog's field mappings (data types)
  api_instance.update_field_types(bodycatalog_name)
rescue Iterable::ApiError => e
  puts "Exception when calling CatalogsApi->update_field_types: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**CatalogMappingsUpdateRequest**](CatalogMappingsUpdateRequest.md)| Catalog Field Types | 
 **catalog_name** | **String**| Catalog name [Alphanumeric, dashes, case insensitive, 255 characters max] | 

### Return type

nil (empty response body)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: Not defined



