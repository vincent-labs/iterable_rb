=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

require 'date'

module Iterable
  class ApiInAppMessage
    # Iterable-generated Message ID
    attr_accessor :message_id

    # Campaign ID
    attr_accessor :campaign_id

    # Time the In-app message was created
    attr_accessor :created_at

    # Time the in-app message will expire
    attr_accessor :expires_at

    attr_accessor :content

    # The custom payload for the in-app message
    attr_accessor :custom_payload

    attr_accessor :trigger

    # Whether or not the message associated with the event was configured to use the inbox
    attr_accessor :save_to_inbox

    attr_accessor :inbox_metadata

    # The priority value of the in-app message
    attr_accessor :priority_level

    # Whether or not the message was read by user
    attr_accessor :read

    attr_accessor :type_of_content

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'message_id' => :'messageId',
        :'campaign_id' => :'campaignId',
        :'created_at' => :'createdAt',
        :'expires_at' => :'expiresAt',
        :'content' => :'content',
        :'custom_payload' => :'customPayload',
        :'trigger' => :'trigger',
        :'save_to_inbox' => :'saveToInbox',
        :'inbox_metadata' => :'inboxMetadata',
        :'priority_level' => :'priorityLevel',
        :'read' => :'read',
        :'type_of_content' => :'typeOfContent'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'message_id' => :'Object',
        :'campaign_id' => :'Object',
        :'created_at' => :'Object',
        :'expires_at' => :'Object',
        :'content' => :'Object',
        :'custom_payload' => :'Object',
        :'trigger' => :'Object',
        :'save_to_inbox' => :'Object',
        :'inbox_metadata' => :'Object',
        :'priority_level' => :'Object',
        :'read' => :'Object',
        :'type_of_content' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Iterable::ApiInAppMessage` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Iterable::ApiInAppMessage`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'message_id')
        self.message_id = attributes[:'message_id']
      end

      if attributes.key?(:'campaign_id')
        self.campaign_id = attributes[:'campaign_id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'expires_at')
        self.expires_at = attributes[:'expires_at']
      end

      if attributes.key?(:'content')
        self.content = attributes[:'content']
      end

      if attributes.key?(:'custom_payload')
        self.custom_payload = attributes[:'custom_payload']
      end

      if attributes.key?(:'trigger')
        self.trigger = attributes[:'trigger']
      end

      if attributes.key?(:'save_to_inbox')
        self.save_to_inbox = attributes[:'save_to_inbox']
      end

      if attributes.key?(:'inbox_metadata')
        self.inbox_metadata = attributes[:'inbox_metadata']
      end

      if attributes.key?(:'priority_level')
        self.priority_level = attributes[:'priority_level']
      end

      if attributes.key?(:'read')
        self.read = attributes[:'read']
      end

      if attributes.key?(:'type_of_content')
        self.type_of_content = attributes[:'type_of_content']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @type_of_content.nil?
        invalid_properties.push('invalid value for "type_of_content", type_of_content cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @type_of_content.nil?
      true
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          message_id == o.message_id &&
          campaign_id == o.campaign_id &&
          created_at == o.created_at &&
          expires_at == o.expires_at &&
          content == o.content &&
          custom_payload == o.custom_payload &&
          trigger == o.trigger &&
          save_to_inbox == o.save_to_inbox &&
          inbox_metadata == o.inbox_metadata &&
          priority_level == o.priority_level &&
          read == o.read &&
          type_of_content == o.type_of_content
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [message_id, campaign_id, created_at, expires_at, content, custom_payload, trigger, save_to_inbox, inbox_metadata, priority_level, read, type_of_content].hash
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