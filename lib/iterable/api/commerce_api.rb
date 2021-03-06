=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Iterable
  class CommerceApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Track a purchase
    # Track purchase events. 'shoppingCartItems' field on the user profile is cleared. User profile is also updated if it already exists (created otherwise) using the user request field. Also, note that there is a soft limit on the number of unique fields a user can have (default is 1,000). Types of data fields must match the types sent in previous requests, across all data fields in the project.
    # @param body purchase data
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def track_purchase(body, opts = {})
      data, _status_code, _headers = track_purchase_with_http_info(body, opts)
      data
    end

    # Track a purchase
    # Track purchase events. &#x27;shoppingCartItems&#x27; field on the user profile is cleared. User profile is also updated if it already exists (created otherwise) using the user request field. Also, note that there is a soft limit on the number of unique fields a user can have (default is 1,000). Types of data fields must match the types sent in previous requests, across all data fields in the project.
    # @param body purchase data
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def track_purchase_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommerceApi.track_purchase ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CommerceApi.track_purchase"
      end
      # resource path
      local_var_path = '/api/commerce/trackPurchase'

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
        @api_client.config.logger.debug "API called: CommerceApi#track_purchase\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update a user's shopping cart items
    # Update the 'shoppingCartItems' field on the user profile with shopping cart items. User profile is updated if it already exists (created otherwise) via the user field. Types of data fields must match the types sent in previous requests, across all data fields in the project.
    # @param body state of the cart
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def update_cart(body, opts = {})
      data, _status_code, _headers = update_cart_with_http_info(body, opts)
      data
    end

    # Update a user&#x27;s shopping cart items
    # Update the &#x27;shoppingCartItems&#x27; field on the user profile with shopping cart items. User profile is updated if it already exists (created otherwise) via the user field. Types of data fields must match the types sent in previous requests, across all data fields in the project.
    # @param body state of the cart
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def update_cart_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: CommerceApi.update_cart ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling CommerceApi.update_cart"
      end
      # resource path
      local_var_path = '/api/commerce/updateCart'

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
        @api_client.config.logger.debug "API called: CommerceApi#update_cart\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
