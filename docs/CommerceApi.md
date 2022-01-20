# Iterable::CommerceApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**track_purchase**](CommerceApi.md#track_purchase) | **POST** /api/commerce/trackPurchase | Track a purchase
[**update_cart**](CommerceApi.md#update_cart) | **POST** /api/commerce/updateCart | Update a user&#x27;s shopping cart items

# **track_purchase**
> IterableApiResponse track_purchase(body)

Track a purchase

Track purchase events. 'shoppingCartItems' field on the user profile is cleared. User profile is also updated if it already exists (created otherwise) using the user request field. Also, note that there is a soft limit on the number of unique fields a user can have (default is 1,000). Types of data fields must match the types sent in previous requests, across all data fields in the project.

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

api_instance = Iterable::CommerceApi.new
body = Iterable::TrackPurchaseRequest.new # TrackPurchaseRequest | purchase data


begin
  #Track a purchase
  result = api_instance.track_purchase(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CommerceApi->track_purchase: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**TrackPurchaseRequest**](TrackPurchaseRequest.md)| purchase data | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



# **update_cart**
> IterableApiResponse update_cart(body)

Update a user's shopping cart items

Update the 'shoppingCartItems' field on the user profile with shopping cart items. User profile is updated if it already exists (created otherwise) via the user field. Types of data fields must match the types sent in previous requests, across all data fields in the project.

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

api_instance = Iterable::CommerceApi.new
body = Iterable::UpdateCartRequest.new # UpdateCartRequest | state of the cart


begin
  #Update a user's shopping cart items
  result = api_instance.update_cart(body)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling CommerceApi->update_cart: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **body** | [**UpdateCartRequest**](UpdateCartRequest.md)| state of the cart | 

### Return type

[**IterableApiResponse**](IterableApiResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: */*
 - **Accept**: */*



