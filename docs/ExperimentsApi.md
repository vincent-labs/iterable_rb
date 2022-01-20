# Iterable::ExperimentsApi

All URIs are relative to *//api.iterable.com/*

Method | HTTP request | Description
------------- | ------------- | -------------
[**metrics**](ExperimentsApi.md#metrics) | **GET** /api/experiments/metrics | Get metrics for experiments

# **metrics**
> ExperimentMetricsResponse metrics(opts)

Get metrics for experiments

Get metrics for a single experiment or for multiple experiments. Note that we currently only support exporting email experiment metrics.

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

api_instance = Iterable::ExperimentsApi.new
opts = { 
  experiment_id: nil, # Array<Object> | Experiment to export. Specify multiple experimentId query parameters to export multiple experiments.
  campaign_id: nil, # Array<Object> | Campaign whose experiments you want to export. Specify multiple campaignId query parameters to export multiple campaigns.
  start_date_time: DateTime.parse('2013-10-20T19:20:30+01:00'), # DateTime | export starting from (>=)
  end_date_time: DateTime.parse('2013-10-20T19:20:30+01:00') # DateTime | export ending at (<=)
}

begin
  #Get metrics for experiments
  result = api_instance.metrics(opts)
  p result
rescue Iterable::ApiError => e
  puts "Exception when calling ExperimentsApi->metrics: #{e}"
end
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **experiment_id** | [**Array&lt;Object&gt;**](Object.md)| Experiment to export. Specify multiple experimentId query parameters to export multiple experiments. | [optional] 
 **campaign_id** | [**Array&lt;Object&gt;**](Object.md)| Campaign whose experiments you want to export. Specify multiple campaignId query parameters to export multiple campaigns. | [optional] 
 **start_date_time** | **DateTime**| export starting from (&gt;&#x3D;) | [optional] 
 **end_date_time** | **DateTime**| export ending at (&lt;&#x3D;) | [optional] 

### Return type

[**ExperimentMetricsResponse**](ExperimentMetricsResponse.md)

### Authorization

[api_key](../README.md#api_key)

### HTTP request headers

 - **Content-Type**: Not defined
 - **Accept**: text/csv



