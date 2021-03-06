=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.31
=end

require 'date'

module Iterable
  class CampaignDetails
    attr_accessor :id

    # Creation timestamp as epoch time in milliseconds
    attr_accessor :created_at

    # Last update timestamp as epoch time in milliseconds
    attr_accessor :updated_at

    # Start timestamp as epoch time in milliseconds
    attr_accessor :start_at

    # Ended timestamp as epoch time in milliseconds
    attr_accessor :ended_at

    attr_accessor :name

    attr_accessor :template_id

    attr_accessor :message_medium

    attr_accessor :created_by_user_id

    attr_accessor :updated_by_user_id

    attr_accessor :campaign_state

    attr_accessor :list_ids

    attr_accessor :suppression_list_ids

    attr_accessor :send_size

    attr_accessor :recurring_campaign_id

    attr_accessor :workflow_id

    attr_accessor :labels

    attr_accessor :type

    class EnumAttributeValidator
      attr_reader :datatype
      attr_reader :allowable_values

      def initialize(datatype, allowable_values)
        @allowable_values = allowable_values.map do |value|
          case datatype.to_s
          when /Integer/i
            value.to_i
          when /Float/i
            value.to_f
          else
            value
          end
        end
      end

      def valid?(value)
        !value || allowable_values.include?(value)
      end
    end

    # Attribute mapping from ruby-style variable name to JSON key.
    def self.attribute_map
      {
        :'id' => :'id',
        :'created_at' => :'createdAt',
        :'updated_at' => :'updatedAt',
        :'start_at' => :'startAt',
        :'ended_at' => :'endedAt',
        :'name' => :'name',
        :'template_id' => :'templateId',
        :'message_medium' => :'messageMedium',
        :'created_by_user_id' => :'createdByUserId',
        :'updated_by_user_id' => :'updatedByUserId',
        :'campaign_state' => :'campaignState',
        :'list_ids' => :'listIds',
        :'suppression_list_ids' => :'suppressionListIds',
        :'send_size' => :'sendSize',
        :'recurring_campaign_id' => :'recurringCampaignId',
        :'workflow_id' => :'workflowId',
        :'labels' => :'labels',
        :'type' => :'type'
      }
    end

    # Attribute type mapping.
    def self.openapi_types
      {
        :'id' => :'Object',
        :'created_at' => :'Object',
        :'updated_at' => :'Object',
        :'start_at' => :'Object',
        :'ended_at' => :'Object',
        :'name' => :'Object',
        :'template_id' => :'Object',
        :'message_medium' => :'Object',
        :'created_by_user_id' => :'Object',
        :'updated_by_user_id' => :'Object',
        :'campaign_state' => :'Object',
        :'list_ids' => :'Object',
        :'suppression_list_ids' => :'Object',
        :'send_size' => :'Object',
        :'recurring_campaign_id' => :'Object',
        :'workflow_id' => :'Object',
        :'labels' => :'Object',
        :'type' => :'Object'
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
        fail ArgumentError, "The input argument (attributes) must be a hash in `Iterable::CampaignDetails` initialize method"
      end

      # check to see if the attribute exists and convert string to symbol for hash key
      attributes = attributes.each_with_object({}) { |(k, v), h|
        if (!self.class.attribute_map.key?(k.to_sym))
          fail ArgumentError, "`#{k}` is not a valid attribute in `Iterable::CampaignDetails`. Please check the name to make sure it's valid. List of attributes: " + self.class.attribute_map.keys.inspect
        end
        h[k.to_sym] = v
      }

      if attributes.key?(:'id')
        self.id = attributes[:'id']
      end

      if attributes.key?(:'created_at')
        self.created_at = attributes[:'created_at']
      end

      if attributes.key?(:'updated_at')
        self.updated_at = attributes[:'updated_at']
      end

      if attributes.key?(:'start_at')
        self.start_at = attributes[:'start_at']
      end

      if attributes.key?(:'ended_at')
        self.ended_at = attributes[:'ended_at']
      end

      if attributes.key?(:'name')
        self.name = attributes[:'name']
      end

      if attributes.key?(:'template_id')
        self.template_id = attributes[:'template_id']
      end

      if attributes.key?(:'message_medium')
        self.message_medium = attributes[:'message_medium']
      end

      if attributes.key?(:'created_by_user_id')
        self.created_by_user_id = attributes[:'created_by_user_id']
      end

      if attributes.key?(:'updated_by_user_id')
        self.updated_by_user_id = attributes[:'updated_by_user_id']
      end

      if attributes.key?(:'campaign_state')
        self.campaign_state = attributes[:'campaign_state']
      end

      if attributes.key?(:'list_ids')
        if (value = attributes[:'list_ids']).is_a?(Array)
          self.list_ids = value
        end
      end

      if attributes.key?(:'suppression_list_ids')
        if (value = attributes[:'suppression_list_ids']).is_a?(Array)
          self.suppression_list_ids = value
        end
      end

      if attributes.key?(:'send_size')
        self.send_size = attributes[:'send_size']
      end

      if attributes.key?(:'recurring_campaign_id')
        self.recurring_campaign_id = attributes[:'recurring_campaign_id']
      end

      if attributes.key?(:'workflow_id')
        self.workflow_id = attributes[:'workflow_id']
      end

      if attributes.key?(:'labels')
        if (value = attributes[:'labels']).is_a?(Array)
          self.labels = value
        end
      end

      if attributes.key?(:'type')
        self.type = attributes[:'type']
      end
    end

    # Show invalid properties with the reasons. Usually used together with valid?
    # @return Array for valid properties with the reasons
    def list_invalid_properties
      invalid_properties = Array.new
      if @id.nil?
        invalid_properties.push('invalid value for "id", id cannot be nil.')
      end

      if @created_at.nil?
        invalid_properties.push('invalid value for "created_at", created_at cannot be nil.')
      end

      if @updated_at.nil?
        invalid_properties.push('invalid value for "updated_at", updated_at cannot be nil.')
      end

      if @name.nil?
        invalid_properties.push('invalid value for "name", name cannot be nil.')
      end

      if @message_medium.nil?
        invalid_properties.push('invalid value for "message_medium", message_medium cannot be nil.')
      end

      if @created_by_user_id.nil?
        invalid_properties.push('invalid value for "created_by_user_id", created_by_user_id cannot be nil.')
      end

      if @campaign_state.nil?
        invalid_properties.push('invalid value for "campaign_state", campaign_state cannot be nil.')
      end

      if @type.nil?
        invalid_properties.push('invalid value for "type", type cannot be nil.')
      end

      invalid_properties
    end

    # Check to see if the all the properties in the model are valid
    # @return true if the model is valid
    def valid?
      return false if @id.nil?
      return false if @created_at.nil?
      return false if @updated_at.nil?
      return false if @name.nil?
      return false if @message_medium.nil?
      return false if @created_by_user_id.nil?
      return false if @campaign_state.nil?
      campaign_state_validator = EnumAttributeValidator.new('Object', ['Draft', 'Ready', 'Scheduled', 'Running', 'Finished', 'Starting', 'Aborted', 'Recurring'])
      return false unless campaign_state_validator.valid?(@campaign_state)
      return false if @type.nil?
      type_validator = EnumAttributeValidator.new('Object', ['Blast', 'Triggered'])
      return false unless type_validator.valid?(@type)
      true
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] campaign_state Object to be assigned
    def campaign_state=(campaign_state)
      validator = EnumAttributeValidator.new('Object', ['Draft', 'Ready', 'Scheduled', 'Running', 'Finished', 'Starting', 'Aborted', 'Recurring'])
      unless validator.valid?(campaign_state)
        fail ArgumentError, "invalid value for \"campaign_state\", must be one of #{validator.allowable_values}."
      end
      @campaign_state = campaign_state
    end

    # Custom attribute writer method checking allowed values (enum).
    # @param [Object] type Object to be assigned
    def type=(type)
      validator = EnumAttributeValidator.new('Object', ['Blast', 'Triggered'])
      unless validator.valid?(type)
        fail ArgumentError, "invalid value for \"type\", must be one of #{validator.allowable_values}."
      end
      @type = type
    end

    # Checks equality by comparing each attribute.
    # @param [Object] Object to be compared
    def ==(o)
      return true if self.equal?(o)
      self.class == o.class &&
          id == o.id &&
          created_at == o.created_at &&
          updated_at == o.updated_at &&
          start_at == o.start_at &&
          ended_at == o.ended_at &&
          name == o.name &&
          template_id == o.template_id &&
          message_medium == o.message_medium &&
          created_by_user_id == o.created_by_user_id &&
          updated_by_user_id == o.updated_by_user_id &&
          campaign_state == o.campaign_state &&
          list_ids == o.list_ids &&
          suppression_list_ids == o.suppression_list_ids &&
          send_size == o.send_size &&
          recurring_campaign_id == o.recurring_campaign_id &&
          workflow_id == o.workflow_id &&
          labels == o.labels &&
          type == o.type
    end

    # @see the `==` method
    # @param [Object] Object to be compared
    def eql?(o)
      self == o
    end

    # Calculates hash code according to all attributes.
    # @return [Integer] Hash code
    def hash
      [id, created_at, updated_at, start_at, ended_at, name, template_id, message_medium, created_by_user_id, updated_by_user_id, campaign_state, list_ids, suppression_list_ids, send_size, recurring_campaign_id, workflow_id, labels, type].hash
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
