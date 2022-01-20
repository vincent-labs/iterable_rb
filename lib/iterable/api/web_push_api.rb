=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

module Iterable
  class WebPushApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Cancel a web push notification to a user
    # Cancel a web push notification to a specific user. Must include either an email address AND campaignId, or just a scheduledMessageId.
    # @param body Email and Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def cancel(body, opts = {})
      data, _status_code, _headers = cancel_with_http_info(body, opts)
      data
    end

    # Cancel a web push notification to a user
    # Cancel a web push notification to a specific user. Must include either an email address AND campaignId, or just a scheduledMessageId.
    # @param body Email and Campaign ID
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def cancel_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebPushApi.cancel ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling WebPushApi.cancel"
      end
      # resource path
      local_var_path = '/api/webPush/cancel'

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
        @api_client.config.logger.debug "API called: WebPushApi#cancel\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Send web push notification to user
    # Send a web push notification to a specific user. Request data fields will override user profile data fields. A reference to the user profile is provided via the 'profile' field, to help resolve field collisions.
    # @param body Recipient and email id
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def target(body, opts = {})
      data, _status_code, _headers = target_with_http_info(body, opts)
      data
    end

    # Send web push notification to user
    # Send a web push notification to a specific user. Request data fields will override user profile data fields. A reference to the user profile is provided via the &#x27;profile&#x27; field, to help resolve field collisions.
    # @param body Recipient and email id
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def target_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: WebPushApi.target ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling WebPushApi.target"
      end
      # resource path
      local_var_path = '/api/webPush/target'

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
        @api_client.config.logger.debug "API called: WebPushApi#target\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
