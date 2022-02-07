=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module Iterable
  class ApiEmailTemplateModel
    # Email Template ID
    attr_accessor :template_id

    attr_accessor :metadata

    # Name of the template
    attr_accessor :name

    # From name
    attr_accessor :from_name

    # From email (must be an authorized sender)
    attr_accessor :from_email

    # Reply to email
    attr_accessor :reply_to_email

    # Subject
    attr_accessor :subject

    # Preheader text
    attr_accessor :preheader_text

    # CC emails
    attr_accessor :cc_emails

    # BCC emails
    attr_accessor :bcc_emails

    # HTML contents
    attr_accessor :html

    # Plain text contents
    attr_accessor :plain_text

    # Google analytics utm_campaign value
    attr_accessor :google_analytics_campaign_name

    # Parameters to append to each URL in html contents
    attr_accessor :link_params

    # [Deprecated - use dataFeedIds instead] Id for data feed used in template rendering
    attr_accessor :data_feed_id

    # Ids for data feeds used in template rendering
    attr_accessor :data_feed_ids

    # Cache data feed lookups for 1 hour
    attr_accessor :cache_data_feed

    # Merge data feed contents into user context, so fields be referenced by {{field}} instead of [[field]]
    attr_accessor :merge_data_feed_context

    # Client template Id. Used as a secondary key to reference the template
    attr_accessor :client_template_id

    # The locale for the content in this request. Leave empty for default locale. Iterable will automatically send the content with locale that matches a 'locale' field in the user profile.
    attr_accessor :locale

    # Message Type Id
    attr_accessor :message_type_id

    # Creator User Id
    attr_accessor :creator_user_id

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'template_id' => :'templateId',
        :'metadata' => :'metadata',
        :'name' => :'name',
        :'from_name' => :'fromName',
        :'from_email' => :'fromEmail',
        :'reply_to_email' => :'replyToEmail',
        :'subject' => :'subject',
        :'preheader_text' => :'preheaderText',
        :'cc_emails' => :'ccEmails',
        :'bcc_emails' => :'bccEmails',
        :'html' => :'html',
        :'plain_text' => :'plainText',
        :'google_analytics_campaign_name' => :'googleAnalyticsCampaignName',
        :'link_params' => :'linkParams',
        :'data_feed_id' => :'dataFeedId',
        :'data_feed_ids' => :'dataFeedIds',
        :'cache_data_feed' => :'cacheDataFeed',
        :'merge_data_feed_context' => :'mergeDataFeedContext',
        :'client_template_id' => :'clientTemplateId',
        :'locale' => :'locale',
        :'message_type_id' => :'messageTypeId',
        :'creator_user_id' => :'creatorUserId'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'template_id' => :'Object',
        :'metadata' => :'Object',
        :'name' => :'Object',
        :'from_name' => :'Object',
        :'from_email' => :'Object',
        :'reply_to_email' => :'Object',
        :'subject' => :'Object',
        :'preheader_text' => :'Object',
        :'cc_emails' => :'Object',
        :'bcc_emails' => :'Object',
        :'html' => :'Object',
        :'plain_text' => :'Object',
        :'google_analytics_campaign_name' => :'Object',
        :'link_params' => :'Object',
        :'data_feed_id' => :'Object',
        :'data_feed_ids' => :'Object',
        :'cache_data_feed' => :'Object',
        :'merge_data_feed_context' => :'Object',
        :'client_template_id' => :'Object',
        :'locale' => :'Object',
        :'message_type_id' => :'Object',
        :'creator_user_id' => :'Object'
      }
    end

    # List of attributes with nullable: true
    def self.openapi_nullable
      Set.new([
      ])
    end
  
    # Initializes the object
    # @param [Hash] attributes Model attributes in the form of hash
    def initialize(attributes = {})
      if (!attributes.is_a?(Hash))
        fail ArgumentError, "The input argument (attributes) must be a hash in `Iterable::ApiEmailTemplateModel` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Iterable::ApiEmailTemplateModel`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'metadata')
        self.metadata = attributes[:'metadata']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'from_name')
        self.from_name = attributes[:'from_name']
      end

      if attributes.key?(:'from_email')
        self.from_email = attributes[:'from_email']
      end

      if attributes.key?(:'reply_to_email')
        self.reply_to_email = attributes[:'reply_to_email']
      end

      if attributes.key?(:'subject')
        self.subject = attributes[:'subject']
      end

      if attributes.key?(:'preheader_text')
        self.preheader_text = attributes[:'preheader_text']
      end

      if attributes.key?(:'cc_emails')
        if (value = attributes[:'cc_emails']).is_a?(Array)
          self.cc_emails = value
        end
      end

      if attributes.key?(:'bcc_emails')
        if (value = attributes[:'bcc_emails']).is_a?(Array)
          self.bcc_emails = value
        end
      end

      if attributes.key?(:'html')
        self.html = attributes[:'html']
      end

      if attributes.key?(:'plain_text')
        self.plain_text = attributes[:'plain_text']
      end

      if attributes.key?(:'google_analytics_campaign_name')
        self.google_analytics_campaign_name = attributes[:'google_analytics_campaign_name']
      end

      if attributes.key?(:'link_params')
        if (value = attributes[:'link_params']).is_a?(Array)
          self.link_params = value
        end
      end

      if attributes.key?(:'data_feed_id')
        self.data_feed_id = attributes[:'data_feed_id']
      end

      if attributes.key?(:'data_feed_ids')
        if (value = attributes[:'data_feed_ids']).is_a?(Array)
          self.data_feed_ids = value
        end
      end

      if attributes.key?(:'cache_data_feed')
        self.cache_data_feed = attributes[:'cache_data_feed']
      end

      if attributes.key?(:'merge_data_feed_context')
        self.merge_data_feed_context = attributes[:'merge_data_feed_context']
      end

      if attributes.key?(:'client_template_id')
        self.client_template_id = attributes[:'client_template_id']
      end

      if attributes.key?(:'locale')
        self.locale = attributes[:'locale']
      end

      if attributes.key?(:'message_type_id')
        self.message_type_id = attributes[:'message_type_id']
      end

      if attributes.key?(:'creator_user_id')
        self.creator_user_id = attributes[:'creator_user_id']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @template_id.nil?
        invalid_properties.push('invalid value for "template_id", template_id cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @template_id.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          template_id == o.template_id &&
          metadata == o.metadata &&
          name == o.name &&
          from_name == o.from_name &&
          from_email == o.from_email &&
          reply_to_email == o.reply_to_email &&
          subject == o.subject &&
          preheader_text == o.preheader_text &&
          cc_emails == o.cc_emails &&
          bcc_emails == o.bcc_emails &&
          html == o.html &&
          plain_text == o.plain_text &&
          google_analytics_campaign_name == o.google_analytics_campaign_name &&
          link_params == o.link_params &&
          data_feed_id == o.data_feed_id &&
          data_feed_ids == o.data_feed_ids &&
          cache_data_feed == o.cache_data_feed &&
          merge_data_feed_context == o.merge_data_feed_context &&
          client_template_id == o.client_template_id &&
          locale == o.locale &&
          message_type_id == o.message_type_id &&
          creator_user_id == o.creator_user_id
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [template_id, metadata, name, from_name, from_email, reply_to_email, subject, preheader_text, cc_emails, bcc_emails, html, plain_text, google_analytics_campaign_name, link_params, data_feed_id, data_feed_ids, cache_data_feed, merge_data_feed_context, client_template_id, locale, message_type_id, creator_user_id].hash
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def self.build_from_hash(attributes)
      new.build_from_hash(attributes)
    end

    # Builds the object from hash
    # @param [Hash] attributes Model attributes in the form of hash
    # @return [Object] Returns the model itself
    def build_from_hash(attributes)
      return nil unless attributes.is_a?(Hash)
      self.class.openapi_types.each_pair do |key, type|
        if type =~ /\AArray<(.*)>/i
          # check to ensure the input is an array given that the attribute
          # is documented as an array but the input is not
          if attributes[self.class.attribute_map[key]].is_a?(Array)
            self.send("#{key}=", attributes[self.class.attribute_map[key]].map { |v| _deserialize($1, v) })
          end
        elsif !attributes[self.class.attribute_map[key]].nil?
          self.send("#{key}=", _deserialize(type, attributes[self.class.attribute_map[key]]))
        elsif attributes[self.class.attribute_map[key]].nil? && self.class.openapi_nullable.include?(key)
          self.send("#{key}=", nil)
        end
      end

      self
    end

    # Deserializes the data based on type
    # @param string type Data type
    # @param string value Value to be deserialized
    # @return [Object] Deserialized data
    def _deserialize(type, value)
      case type.to_sym
      when :DateTime
        DateTime.parse(value)
      when :Date
        Date.parse(value)
      when :String
        value.to_s
      when :Integer
        value.to_i
      when :Float
        value.to_f
      when :Boolean
        if value.to_s =~ /\A(true|t|yes|y|1)\z/i
          true
        else
          false
        end
      when :Object
        # generic object (usually a Hash), return directly
        value
      when /\AArray<(?<inner_type>.+)>\z/
        inner_type = Regexp.last_match[:inner_type]
        value.map { |v| _deserialize(inner_type, v) }
      when /\AHash<(?<k_type>.+?), (?<v_type>.+)>\z/
        k_type = Regexp.last_match[:k_type]
        v_type = Regexp.last_match[:v_type]
        {}.tap do |hash|
          value.each do |k, v|
            hash[_deserialize(k_type, k)] = _deserialize(v_type, v)
          end
        end
      else # model
        Iterable.const_get(type).build_from_hash(value)
      end
    end

    # Returns the string representation of the object
    # @return [String] String presentation of the object
    def to_s
      to_hash.to_s
    end

    # to_body is an alias to to_hash (backward compatibility)
    # @return [Hash] Returns the object in the form of hash
    def to_body
      to_hash
    end

    # Returns the object in the form of hash
    # @return [Hash] Returns the object in the form of hash
    def to_hash
      hash = {}
      self.class.attribute_map.each_pair do |attr, param|
        value = self.send(attr)
        if value.nil?
          is_nullable = self.class.openapi_nullable.include?(attr)
          next if !is_nullable || (is_nullable && !instance_variable_defined?(:"@#{attr}"))
        end

        hash[param] = _to_hash(value)
      end
      hash
    end

    # Outputs non-array value in the form of hash
    # For object, use to_hash. Otherwise, just return the value
    # @param [Object] value Any valid value
    # @return [Hash] Returns the value in the form of hash
    def _to_hash(value)
      if value.is_a?(Array)
        value.compact.map { |v| _to_hash(v) }
      elsif value.is_a?(Hash)
        {}.tap do |hash|
          value.each { |k, v| hash[k] = _to_hash(v) }
        end
      elsif value.respond_to? :to_hash
        value.to_hash
      else
        value
      end
    end  end
end
