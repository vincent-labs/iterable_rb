=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Iterable
  class ExperimentsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get metrics for experiments
    # Get metrics for a single experiment or for multiple experiments. Note that we currently only support exporting email experiment metrics.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :experiment_id Experiment to export. Specify multiple experimentId query parameters to export multiple experiments.
    # @option opts [Array<Object>] :campaign_id Campaign whose experiments you want to export. Specify multiple campaignId query parameters to export multiple campaigns.
    # @option opts [DateTime] :start_date_time export starting from (&gt;&#x3D;)
    # @option opts [DateTime] :end_date_time export ending at (&lt;&#x3D;)
    # @return [ExperimentMetricsResponse]
    def metrics(opts = {})
      data, _status_code, _headers = metrics_with_http_info(opts)
      data
    end

    # Get metrics for experiments
    # Get metrics for a single experiment or for multiple experiments. Note that we currently only support exporting email experiment metrics.
    # @param [Hash] opts the optional parameters
    # @option opts [Array<Object>] :experiment_id Experiment to export. Specify multiple experimentId query parameters to export multiple experiments.
    # @option opts [Array<Object>] :campaign_id Campaign whose experiments you want to export. Specify multiple campaignId query parameters to export multiple campaigns.
    # @option opts [DateTime] :start_date_time export starting from (&gt;&#x3D;)
    # @option opts [DateTime] :end_date_time export ending at (&lt;&#x3D;)
    # @return [Array<(ExperimentMetricsResponse, Integer, Hash)>] ExperimentMetricsResponse data, response status code and response headers
    def metrics_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: ExperimentsApi.metrics ...'
      end
      # resource path
      local_var_path = '/api/experiments/metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'experimentId'] = @api_client.build_collection_param(opts[:'experiment_id'], :multi) if !opts[:'experiment_id'].nil?
      query_params[:'campaignId'] = @api_client.build_collection_param(opts[:'campaign_id'], :multi) if !opts[:'campaign_id'].nil?
      query_params[:'startDateTime'] = opts[:'start_date_time'] if !opts[:'start_date_time'].nil?
      query_params[:'endDateTime'] = opts[:'end_date_time'] if !opts[:'end_date_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/csv'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ExperimentMetricsResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: ExperimentsApi#metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
