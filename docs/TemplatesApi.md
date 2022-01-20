# Iterable::TemplatesApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**get_by_client_template_id**](TemplatesApi.md#get_by_client_template_id) | **GET** /api/templates/getByClientTemplateId | Get an email template by clientTemplateId
[**get_email_template**](TemplatesApi.md#get_email_template) | **GET** /api/templates/email/get | Get an email template by templateId
[**get_in_app_template**](TemplatesApi.md#get_in_app_template) | **GET** /api/templates/inapp/get | Get an in-app template
[**get_push_template**](TemplatesApi.md#get_push_template) | **GET** /api/templates/push/get | Get a push template
[**get_sms_template**](TemplatesApi.md#get_sms_template) | **GET** /api/templates/sms/get | Get an SMS template
[**get_templates**](TemplatesApi.md#get_templates) | **GET** /api/templates | Get project templates
[**update_email_template**](TemplatesApi.md#update_email_template) | **POST** /api/templates/email/update | Update email template
[**update_in_app_template**](TemplatesApi.md#update_in_app_template) | **POST** /api/templates/inapp/update | Update in-app template
[**update_push_template**](TemplatesApi.md#update_push_template) | **POST** /api/templates/push/update | Update push template
[**update_sms_template**](TemplatesApi.md#update_sms_template) | **POST** /api/templates/sms/update | Update SMS template
[**upsert_email_template**](TemplatesApi.md#upsert_email_template) | **POST** /api/templates/email/upsert | Create email template
[**upsert_in_app_template**](TemplatesApi.md#upsert_in_app_template) | **POST** /api/templates/inapp/upsert | Create an in-app template
[**upsert_push_template**](TemplatesApi.md#upsert_push_template) | **POST** /api/templates/push/upsert | Create a push template
[**upsert_sms_template**](TemplatesApi.md#upsert_sms_template) | **POST** /api/templates/sms/upsert | Create an SMS template

# **get_by_client_template_id**
> ClientTemplateIdResponse get_by_client_template_id(client_template_id)

Get an email template by clientTemplateId

<b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::TemplatesApi.new
client_template_id = 'client_template_id_example' # String | Client Template Id


begin
  #Get an email template by clientTemplateId
  result = api_instance.get_by_client_template_id(client_template_id)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_by_client_template_id: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **client_template_id** | **String**| Client Template Id | 

### Return type

[**ClientTemplateIdResponse**](ClientTemplateIdResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_email_template**
> ApiEmailTemplateModel get_email_template(template_id, opts)

Get an email template by templateId

<b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::TemplatesApi.new
template_id = 789 # Integer | Template ID
opts = { 
  locale: 'locale_example' # String | Locale of content to get
}

begin
  #Get an email template by templateId
  result = api_instance.get_email_template(template_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_email_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template ID | 
 **locale** | **String**| Locale of content to get | [optional] 

### Return type

[**ApiEmailTemplateModel**](ApiEmailTemplateModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_in_app_template**
> ApiInAppTemplateModel get_in_app_template(template_id, opts)

Get an in-app template

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

api_instance = Iterable::TemplatesApi.new
template_id = 789 # Integer | Template ID
opts = { 
  locale: 'locale_example' # String | Locale of content to get
}

begin
  #Get an in-app template
  result = api_instance.get_in_app_template(template_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_in_app_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template ID | 
 **locale** | **String**| Locale of content to get | [optional] 

### Return type

[**ApiInAppTemplateModel**](ApiInAppTemplateModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_push_template**
> ApiPushTemplateModel get_push_template(template_id, opts)

Get a push template

<b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::TemplatesApi.new
template_id = 789 # Integer | Template ID
opts = { 
  locale: 'locale_example' # String | Locale of content to get
}

begin
  #Get a push template
  result = api_instance.get_push_template(template_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_push_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template ID | 
 **locale** | **String**| Locale of content to get | [optional] 

### Return type

[**ApiPushTemplateModel**](ApiPushTemplateModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_sms_template**
> ApiSMSTemplateModel get_sms_template(template_id, opts)

Get an SMS template

<b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::TemplatesApi.new
template_id = 789 # Integer | Template ID
opts = { 
  locale: 'locale_example' # String | Locale of content to get
}

begin
  #Get an SMS template
  result = api_instance.get_sms_template(template_id, opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_sms_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_id** | **Integer**| Template ID | 
 **locale** | **String**| Locale of content to get | [optional] 

### Return type

[**ApiSMSTemplateModel**](ApiSMSTemplateModel.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **get_templates**
> GetTemplatesResponse get_templates(opts)

Get project templates

Get templates for a project. <b>Rate limit</b>: 100 requests/second, per project.

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

api_instance = Iterable::TemplatesApi.new
opts = { 
  template_type: 'None', # String | Only retrieve templates associated with this template type
  message_medium: 'None', # String | Only retrieve templates associated with this message medium
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | Get templates created at or after this date time (yyyy-MM-dd HH:mm:ss [ZZ])
  end_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | Get templates created before this date time (yyyy-MM-dd HH:mm:ss [ZZ])
}

begin
  #Get project templates
  result = api_instance.get_templates(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->get_templates: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **template_type** | **String**| Only retrieve templates associated with this template type | [optional] [default to None]
 **message_medium** | **String**| Only retrieve templates associated with this message medium | [optional] [default to None]
 **start_date_time** | **DateTime**| Get templates created at or after this date time (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 
 **end_date_time** | **DateTime**| Get templates created before this date time (yyyy-MM-dd HH:mm:ss [ZZ]) | [optional] 

### Return type

[**GetTemplatesResponse**](GetTemplatesResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: */*



# **update_email_template**
> IterableApiResponse update_email_template(body)

Update email template

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::ApiEmailTemplateModel.new # ApiEmailTemplateModel | Only the fields specified will be updated


begin
  #Update email template
  result = api_instance.update_email_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->update_email_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiEmailTemplateModel**](ApiEmailTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_in_app_template**
> IterableApiResponse update_in_app_template(body)

Update in-app template

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::ApiInAppTemplateModel.new # ApiInAppTemplateModel | Only the fields specified will be updated


begin
  #Update in-app template
  result = api_instance.update_in_app_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->update_in_app_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiInAppTemplateModel**](ApiInAppTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_push_template**
> IterableApiResponse update_push_template(body)

Update push template

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::ApiPushTemplateModel.new # ApiPushTemplateModel | Only the fields specified will be updated


begin
  #Update push template
  result = api_instance.update_push_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->update_push_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiPushTemplateModel**](ApiPushTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_sms_template**
> IterableApiResponse update_sms_template(body)

Update SMS template

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::ApiSMSTemplateModel.new # ApiSMSTemplateModel | Only the fields specified will be updated


begin
  #Update SMS template
  result = api_instance.update_sms_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->update_sms_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**ApiSMSTemplateModel**](ApiSMSTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **upsert_email_template**
> IterableApiResponse upsert_email_template(body)

Create email template

Create email template if it doesn't exist already, otherwise update all email templates which match the name provided.

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::UpsertEmailTemplateModel.new # UpsertEmailTemplateModel | Only the fields specified will be updated


begin
  #Create email template
  result = api_instance.upsert_email_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->upsert_email_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpsertEmailTemplateModel**](UpsertEmailTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **upsert_in_app_template**
> IterableApiResponse upsert_in_app_template(body)

Create an in-app template

Create an in-app template if it doesn't exist yet, otherwise update all in-app templates which match the name provided.

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::UpsertInAppTemplateModel.new # UpsertInAppTemplateModel | Only the fields specified will be updated


begin
  #Create an in-app template
  result = api_instance.upsert_in_app_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->upsert_in_app_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpsertInAppTemplateModel**](UpsertInAppTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **upsert_push_template**
> IterableApiResponse upsert_push_template(body)

Create a push template

Create a push template if it doesn't exist, otherwise update all push templates which match the name provided.

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::UpsertPushTemplateModel.new # UpsertPushTemplateModel | Only the fields specified will be updated


begin
  #Create a push template
  result = api_instance.upsert_push_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->upsert_push_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpsertPushTemplateModel**](UpsertPushTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **upsert_sms_template**
> IterableApiResponse upsert_sms_template(body)

Create an SMS template

Create an SMS template if it doesn't exist yet, otherwise update all SMS templates which match the name provided.

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

api_instance = Iterable::TemplatesApi.new
body = Iterable::UpsertSMSTemplateModel.new # UpsertSMSTemplateModel | Only the fields specified will be updated


begin
  #Create an SMS template
  result = api_instance.upsert_sms_template(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling TemplatesApi->upsert_sms_template: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpsertSMSTemplateModel**](UpsertSMSTemplateModel.md)| Only the fields specified will be updated | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



