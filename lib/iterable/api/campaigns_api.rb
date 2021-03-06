=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Iterable
  class CampaignsApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Abort a campaign
    # Abort a campaign given a campaign ID
    # @param body Abort campaign
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def abort_campaign(body, opts = {})
      data, _status_code, _headers = abort_campaign_with_http_info(body, opts)
      data
    end

    # Abort a campaign
    # Abort a campaign given a campaign ID
    # @param body Abort campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def abort_campaign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.abort_campaign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CampaignsApi.abort_campaign"
      end
      # resource path
      local_var_path = '/api/campaigns/abort'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'IterableApiResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#abort_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # List campaign metadata
    # Get metadata about campaigns in a project. <b>Rate limit</b>: 100 requests/second, per project.
    # @param [Hash] opts the optional parameters
    # @return [CampaignsResponse]
    def campaigns(opts = {})
      data, _status_code, _headers = campaigns_with_http_info(opts)
      data
    end

    # List campaign metadata
    # Get metadata about campaigns in a project. &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignsResponse, Integer, Hash)>] CampaignsResponse data, response status code and response headers
    def campaigns_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.campaigns ...'
      end
      # resource path
      local_var_path = '/api/campaigns'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CampaignsResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Cancel a scheduled or recurring campaign
    # Cancel a campaign given a campaign ID
    # @param body Cancel campaign
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def cancel_campaign(body, opts = {})
      data, _status_code, _headers = cancel_campaign_with_http_info(body, opts)
      data
    end

    # Cancel a scheduled or recurring campaign
    # Cancel a campaign given a campaign ID
    # @param body Cancel campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def cancel_campaign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.cancel_campaign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CampaignsApi.cancel_campaign"
      end
      # resource path
      local_var_path = '/api/campaigns/cancel'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'IterableApiResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#cancel_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get child campaigns of a recurring campaign
    # Get child campaigns generated by a recurring campaign. <b>Rate limit</b>: 100 requests/second, per project.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [CampaignsResponse]
    def child_campaigns(id, opts = {})
      data, _status_code, _headers = child_campaigns_with_http_info(id, opts)
      data
    end

    # Get child campaigns of a recurring campaign
    # Get child campaigns generated by a recurring campaign. &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param id 
    # @param [Hash] opts the optional parameters
    # @return [Array<(CampaignsResponse, Integer, Hash)>] CampaignsResponse data, response status code and response headers
    def child_campaigns_with_http_info(id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.child_campaigns ...'
      end
      # verify the required parameter 'id' is set
      if @api_client.config.client_side_validation && id.nil?
        fail ArgumentError, "Missing the required parameter 'id' when calling CampaignsApi.child_campaigns"
      end
      # resource path
      local_var_path = '/api/campaigns/recurring/{id}/childCampaigns'.sub('{' + 'id' + '}', id.to_s)

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'CampaignsResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#child_campaigns\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a campaign
    # Create a new campaign
    # @param body Create campaign
    # @param [Hash] opts the optional parameters
    # @return [CreateCampaignResponse]
    def create_campaign(body, opts = {})
      data, _status_code, _headers = create_campaign_with_http_info(body, opts)
      data
    end

    # Create a campaign
    # Create a new campaign
    # @param body Create campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(CreateCampaignResponse, Integer, Hash)>] CreateCampaignResponse data, response status code and response headers
    def create_campaign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.create_campaign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CampaignsApi.create_campaign"
      end
      # resource path
      local_var_path = '/api/campaigns/create'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'CreateCampaignResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#create_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get metrics for campaigns
    # Get metrics for a single campaign or multiple campaigns. <b>Rate limit</b>: 100 requests/second, per project.
    # @param campaign_id Campaign(s) to export
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :start_date_time Export starting from (&gt;&#x3D;).  Accepted formats include YYYY-MM-DD and other ISO 8601 formats.
    # @option opts [DateTime] :end_date_time Export ending at (&lt;).  Accepted formats include YYYY-MM-DD and other ISO 8601 formats.
    # @return [String]
    def metrics(campaign_id, opts = {})
      data, _status_code, _headers = metrics_with_http_info(campaign_id, opts)
      data
    end

    # Get metrics for campaigns
    # Get metrics for a single campaign or multiple campaigns. &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param campaign_id Campaign(s) to export
    # @param [Hash] opts the optional parameters
    # @option opts [DateTime] :start_date_time Export starting from (&gt;&#x3D;).  Accepted formats include YYYY-MM-DD and other ISO 8601 formats.
    # @option opts [DateTime] :end_date_time Export ending at (&lt;).  Accepted formats include YYYY-MM-DD and other ISO 8601 formats.
    # @return [Array<(String, Integer, Hash)>] String data, response status code and response headers
    def metrics_with_http_info(campaign_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.metrics ...'
      end
      # verify the required parameter 'campaign_id' is set
      if @api_client.config.client_side_validation && campaign_id.nil?
        fail ArgumentError, "Missing the required parameter 'campaign_id' when calling CampaignsApi.metrics"
      end
      # resource path
      local_var_path = '/api/campaigns/metrics'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'campaignId'] = @api_client.build_collection_param(campaign_id, :multi)
      query_params[:'startDateTime'] = opts[:'start_date_time'] if !opts[:'start_date_time'].nil?
      query_params[:'endDateTime'] = opts[:'end_date_time'] if !opts[:'end_date_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['text/plain'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'String' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#metrics\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Trigger a campaign
    # Trigger a campaign given lists
    # @param body Trigger campaign
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def trigger_campaign(body, opts = {})
      data, _status_code, _headers = trigger_campaign_with_http_info(body, opts)
      data
    end

    # Trigger a campaign
    # Trigger a campaign given lists
    # @param body Trigger campaign
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def trigger_campaign_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CampaignsApi.trigger_campaign ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CampaignsApi.trigger_campaign"
      end
      # resource path
      local_var_path = '/api/campaigns/trigger'

      # query parameters
      query_params = opts[:query_params] || {}

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])
      # HTTP header 'Content-Type'
      header_params['Content-Type'] = @api_client.select_header_content_type(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] || @api_client.object_to_http_body(body) 

      return_type = opts[:return_type] || 'IterableApiResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:POST, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: CampaignsApi#trigger_campaign\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
