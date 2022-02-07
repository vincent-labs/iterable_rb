=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

module Iterable
  class TemplatesApi
    attr_accessor :api_client

    def initialize(api_client = ApiClient.default)
      @api_client = api_client
    end
    # Get an email template by clientTemplateId
    # <b>Rate limit</b>: 100 requests/second, per project.
    # @param client_template_id Client Template Id
    # @param [Hash] opts the optional parameters
    # @return [ClientTemplateIdResponse]
    def get_by_client_template_id(client_template_id, opts = {})
      data, _status_code, _headers = get_by_client_template_id_with_http_info(client_template_id, opts)
      data
    end

    # Get an email template by clientTemplateId
    # &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param client_template_id Client Template Id
    # @param [Hash] opts the optional parameters
    # @return [Array<(ClientTemplateIdResponse, Integer, Hash)>] ClientTemplateIdResponse data, response status code and response headers
    def get_by_client_template_id_with_http_info(client_template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_by_client_template_id ...'
      end
      # verify the required parameter 'client_template_id' is set
      if @api_client.config.client_side_validation && client_template_id.nil?
        fail ArgumentError, "Missing the required parameter 'client_template_id' when calling TemplatesApi.get_by_client_template_id"
      end
      # resource path
      local_var_path = '/api/templates/getByClientTemplateId'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'clientTemplateId'] = client_template_id

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ClientTemplateIdResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_by_client_template_id\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an email template by templateId
    # <b>Rate limit</b>: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [ApiEmailTemplateModel]
    def get_email_template(template_id, opts = {})
      data, _status_code, _headers = get_email_template_with_http_info(template_id, opts)
      data
    end

    # Get an email template by templateId
    # &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [Array<(ApiEmailTemplateModel, Integer, Hash)>] ApiEmailTemplateModel data, response status code and response headers
    def get_email_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_email_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_email_template"
      end
      # resource path
      local_var_path = '/api/templates/email/get'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'templateId'] = template_id
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ApiEmailTemplateModel' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_email_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an in-app template
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [ApiInAppTemplateModel]
    def get_in_app_template(template_id, opts = {})
      data, _status_code, _headers = get_in_app_template_with_http_info(template_id, opts)
      data
    end

    # Get an in-app template
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [Array<(ApiInAppTemplateModel, Integer, Hash)>] ApiInAppTemplateModel data, response status code and response headers
    def get_in_app_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_in_app_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_in_app_template"
      end
      # resource path
      local_var_path = '/api/templates/inapp/get'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'templateId'] = template_id
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ApiInAppTemplateModel' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_in_app_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get a push template
    # <b>Rate limit</b>: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [ApiPushTemplateModel]
    def get_push_template(template_id, opts = {})
      data, _status_code, _headers = get_push_template_with_http_info(template_id, opts)
      data
    end

    # Get a push template
    # &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [Array<(ApiPushTemplateModel, Integer, Hash)>] ApiPushTemplateModel data, response status code and response headers
    def get_push_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_push_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_push_template"
      end
      # resource path
      local_var_path = '/api/templates/push/get'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'templateId'] = template_id
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ApiPushTemplateModel' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_push_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get an SMS template
    # <b>Rate limit</b>: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [ApiSMSTemplateModel]
    def get_sms_template(template_id, opts = {})
      data, _status_code, _headers = get_sms_template_with_http_info(template_id, opts)
      data
    end

    # Get an SMS template
    # &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param template_id Template ID
    # @param [Hash] opts the optional parameters
    # @option opts [String] :locale Locale of content to get
    # @return [Array<(ApiSMSTemplateModel, Integer, Hash)>] ApiSMSTemplateModel data, response status code and response headers
    def get_sms_template_with_http_info(template_id, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_sms_template ...'
      end
      # verify the required parameter 'template_id' is set
      if @api_client.config.client_side_validation && template_id.nil?
        fail ArgumentError, "Missing the required parameter 'template_id' when calling TemplatesApi.get_sms_template"
      end
      # resource path
      local_var_path = '/api/templates/sms/get'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'templateId'] = template_id
      query_params[:'locale'] = opts[:'locale'] if !opts[:'locale'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'ApiSMSTemplateModel' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_sms_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Get project templates
    # Get templates for a project. <b>Rate limit</b>: 100 requests/second, per project.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_type Only retrieve templates associated with this template type (default to None)
    # @option opts [String] :message_medium Only retrieve templates associated with this message medium (default to None)
    # @option opts [DateTime] :start_date_time Get templates created at or after this date time (yyyy-MM-dd HH:mm:ss [ZZ])
    # @option opts [DateTime] :end_date_time Get templates created before this date time (yyyy-MM-dd HH:mm:ss [ZZ])
    # @return [GetTemplatesResponse]
    def get_templates(opts = {})
      data, _status_code, _headers = get_templates_with_http_info(opts)
      data
    end

    # Get project templates
    # Get templates for a project. &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
    # @param [Hash] opts the optional parameters
    # @option opts [String] :template_type Only retrieve templates associated with this template type
    # @option opts [String] :message_medium Only retrieve templates associated with this message medium
    # @option opts [DateTime] :start_date_time Get templates created at or after this date time (yyyy-MM-dd HH:mm:ss [ZZ])
    # @option opts [DateTime] :end_date_time Get templates created before this date time (yyyy-MM-dd HH:mm:ss [ZZ])
    # @return [Array<(GetTemplatesResponse, Integer, Hash)>] GetTemplatesResponse data, response status code and response headers
    def get_templates_with_http_info(opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.get_templates ...'
      end
      if @api_client.config.client_side_validation && opts[:'template_type'] && !['Base', 'Blast', 'Triggered', 'Workflow'].include?(opts[:'template_type'])
        fail ArgumentError, 'invalid value for "template_type", must be one of Base, Blast, Triggered, Workflow'
      end
      if @api_client.config.client_side_validation && opts[:'message_medium'] && !['Email', 'Push', 'InApp', 'SMS'].include?(opts[:'message_medium'])
        fail ArgumentError, 'invalid value for "message_medium", must be one of Email, Push, InApp, SMS'
      end
      # resource path
      local_var_path = '/api/templates'

      # query parameters
      query_params = opts[:query_params] || {}
      query_params[:'templateType'] = opts[:'template_type'] if !opts[:'template_type'].nil?
      query_params[:'messageMedium'] = opts[:'message_medium'] if !opts[:'message_medium'].nil?
      query_params[:'startDateTime'] = opts[:'start_date_time'] if !opts[:'start_date_time'].nil?
      query_params[:'endDateTime'] = opts[:'end_date_time'] if !opts[:'end_date_time'].nil?

      # header parameters
      header_params = opts[:header_params] || {}
      # HTTP header 'Accept' (if needed)
      header_params['Accept'] = @api_client.select_header_accept(['*/*'])

      # form parameters
      form_params = opts[:form_params] || {}

      # http body (model)
      post_body = opts[:body] 

      return_type = opts[:return_type] || 'GetTemplatesResponse' 

      auth_names = opts[:auth_names] || ['api_key']
      data, status_code, headers = @api_client.call_api(:GET, local_var_path,
        :header_params => header_params,
        :query_params => query_params,
        :form_params => form_params,
        :body => post_body,
        :auth_names => auth_names,
        :return_type => return_type)

      if @api_client.config.debugging
        @api_client.config.logger.debug "API called: TemplatesApi#get_templates\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update email template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def update_email_template(body, opts = {})
      data, _status_code, _headers = update_email_template_with_http_info(body, opts)
      data
    end

    # Update email template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def update_email_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_email_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.update_email_template"
      end
      # resource path
      local_var_path = '/api/templates/email/update'

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
        @api_client.config.logger.debug "API called: TemplatesApi#update_email_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update in-app template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def update_in_app_template(body, opts = {})
      data, _status_code, _headers = update_in_app_template_with_http_info(body, opts)
      data
    end

    # Update in-app template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def update_in_app_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_in_app_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.update_in_app_template"
      end
      # resource path
      local_var_path = '/api/templates/inapp/update'

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
        @api_client.config.logger.debug "API called: TemplatesApi#update_in_app_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update push template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def update_push_template(body, opts = {})
      data, _status_code, _headers = update_push_template_with_http_info(body, opts)
      data
    end

    # Update push template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def update_push_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_push_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.update_push_template"
      end
      # resource path
      local_var_path = '/api/templates/push/update'

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
        @api_client.config.logger.debug "API called: TemplatesApi#update_push_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Update SMS template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def update_sms_template(body, opts = {})
      data, _status_code, _headers = update_sms_template_with_http_info(body, opts)
      data
    end

    # Update SMS template
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def update_sms_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.update_sms_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.update_sms_template"
      end
      # resource path
      local_var_path = '/api/templates/sms/update'

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
        @api_client.config.logger.debug "API called: TemplatesApi#update_sms_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create email template
    # Create email template if it doesn't exist already, otherwise update all email templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def upsert_email_template(body, opts = {})
      data, _status_code, _headers = upsert_email_template_with_http_info(body, opts)
      data
    end

    # Create email template
    # Create email template if it doesn&#x27;t exist already, otherwise update all email templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def upsert_email_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.upsert_email_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.upsert_email_template"
      end
      # resource path
      local_var_path = '/api/templates/email/upsert'

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
        @api_client.config.logger.debug "API called: TemplatesApi#upsert_email_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an in-app template
    # Create an in-app template if it doesn't exist yet, otherwise update all in-app templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def upsert_in_app_template(body, opts = {})
      data, _status_code, _headers = upsert_in_app_template_with_http_info(body, opts)
      data
    end

    # Create an in-app template
    # Create an in-app template if it doesn&#x27;t exist yet, otherwise update all in-app templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def upsert_in_app_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.upsert_in_app_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.upsert_in_app_template"
      end
      # resource path
      local_var_path = '/api/templates/inapp/upsert'

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
        @api_client.config.logger.debug "API called: TemplatesApi#upsert_in_app_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create a push template
    # Create a push template if it doesn't exist, otherwise update all push templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def upsert_push_template(body, opts = {})
      data, _status_code, _headers = upsert_push_template_with_http_info(body, opts)
      data
    end

    # Create a push template
    # Create a push template if it doesn&#x27;t exist, otherwise update all push templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def upsert_push_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.upsert_push_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.upsert_push_template"
      end
      # resource path
      local_var_path = '/api/templates/push/upsert'

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
        @api_client.config.logger.debug "API called: TemplatesApi#upsert_push_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
    # Create an SMS template
    # Create an SMS template if it doesn't exist yet, otherwise update all SMS templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [IterableApiResponse]
    def upsert_sms_template(body, opts = {})
      data, _status_code, _headers = upsert_sms_template_with_http_info(body, opts)
      data
    end

    # Create an SMS template
    # Create an SMS template if it doesn&#x27;t exist yet, otherwise update all SMS templates which match the name provided.
    # @param body Only the fields specified will be updated
    # @param [Hash] opts the optional parameters
    # @return [Array<(IterableApiResponse, Integer, Hash)>] IterableApiResponse data, response status code and response headers
    def upsert_sms_template_with_http_info(body, opts = {})
      if @api_client.config.debugging
        @api_client.config.logger.debug 'Calling API: TemplatesApi.upsert_sms_template ...'
      end
      # verify the required parameter 'body' is set
      if @api_client.config.client_side_validation && body.nil?
        fail ArgumentError, "Missing the required parameter 'body' when calling TemplatesApi.upsert_sms_template"
      end
      # resource path
      local_var_path = '/api/templates/sms/upsert'

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
        @api_client.config.logger.debug "API called: TemplatesApi#upsert_sms_template\nData: #{data.inspect}\nStatus code: #{status_code}\nHeaders: #{headers}"
      end
      return data, status_code, headers
    end
  end
end
