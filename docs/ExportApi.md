# Iterable::ExportApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**export_data_csv**](ExportApi.md#export_data_csv) | **GET** /api/export/data.csv | Export data to CSV
[**export_data_json**](ExportApi.md#export_data_json) | **GET** /api/export/data.json | Export data to JSON
[**export_user_events**](ExportApi.md#export_user_events) | **GET** /api/export/userEvents | Export user events

# **export_data_csv**
> String export_data_csv(data_type_name, opts)

Export data to CSV

Export campaign analytics data in CSV format. Use of either 'range' or 'startDateTime' and 'endDateTime' is required.<br/><b>Rate limit</b>: 4 requests/minute, per project.

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

api_instance = Iterable::ExportApi.new
data_type_name = 'data_type_name_example' # String | data type name
opts = { 
  range: 'Today', # String | date range, uses UTC time
  delimiter: ',', # String | CSV filter delimiter
  start_date_time: 'start_date_time_example', # String | Export starting from (>=) (yyyy-MM-dd HH:mm:ss [ZZ])
  end_date_time: 'end_date_time_example', # String | Export ending at (<) (yyyy-MM-dd HH:mm:ss [ZZ])
  omit_fields: 'omit_fields_example', # String | Fields to omit (comma separated)
  only_fields: ['only_fields_example'], # Array<String> | If non-empty, will only export these fields
  campaign_id: 789 # Integer | If provided, only export data from this campaign
}

begin
  #Export data to CSV
  result = api_instance.export_data_csv(data_type_name, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ExportApi->export_data_csv: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_type_name** | **String**| data type name | 
 **range** | **String**| date range, uses UTC time | [optional] [default to Today]
 **delimiter** | **String**| CSV filter delimiter | [optional] [default to ,]
 **start_date_time** | **String**| Export starting from (&gt;&#x3D;) (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 
 **end_date_time** | **String**| Export ending at (&lt;) (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 
 **omit_fields** | **String**| Fields to omit (comma separated) | [optional] 
 **only_fields** | [**Array&lt;String&gt;**](String.md)| If non-empty, will only export these fields | [optional] 
 **campaign_id** | **Integer**| If provided, only export data from this campaign | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



# **export_data_json**
> String export_data_json(data_type_name, opts)

Export data to JSON

Export campaign analytics data in JSON format, one entry per line. Use of either 'range' or 'startDateTime' and 'endDateTime' is required.<br/><b>Rate limit</b>: 4 requests/minute, per project.

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

api_instance = Iterable::ExportApi.new
data_type_name = 'data_type_name_example' # String | data type name
opts = { 
  range: 'Today', # String | date range, uses UTC time
  start_date_time: 'start_date_time_example', # String | export starting from (&gt;=) (yyyy-MM-dd HH:mm:ss [ZZ])
  end_date_time: 'end_date_time_example', # String | export ending at (&lt;) (yyyy-MM-dd HH:mm:ss [ZZ])
  omit_fields: 'omit_fields_example', # String | fields to omit (comma separated)
  only_fields: ['only_fields_example'], # Array<String> | if nonempty, will only export these fields
  campaign_id: 789 # Integer | if provided, only export data from this campaign
}

begin
  #Export data to JSON
  result = api_instance.export_data_json(data_type_name, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ExportApi->export_data_json: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **data_type_name** | **String**| data type name | 
 **range** | **String**| date range, uses UTC time | [optional] [default to Today]
 **start_date_time** | **String**| export starting from (&amp;gt;&#x3D;) (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 
 **end_date_time** | **String**| export ending at (&amp;lt;) (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 
 **omit_fields** | **String**| fields to omit (comma separated) | [optional] 
 **only_fields** | [**Array&lt;String&gt;**](String.md)| if nonempty, will only export these fields | [optional] 
 **campaign_id** | **Integer**| if provided, only export data from this campaign | [optional] 

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-json-stream



# **export_user_events**
> String export_user_events(email, opts)

Export user events

Export all events in JSON format for a user. One event per line.

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

api_instance = Iterable::ExportApi.new
email = 'email_example' # String | email
opts = { 
  include_custom_events: false # BOOLEAN | Include Custom Events
}

begin
  #Export user events
  result = api_instance.export_user_events(email, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ExportApi->export_user_events: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **email** | **String**| email | 
 **include_custom_events** | **BOOLEAN**| Include Custom Events | [optional] [default to false]

### Return type

**String**

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: application/x-json-stream



