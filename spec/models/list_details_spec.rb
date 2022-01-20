=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for Iterable::ListDetails
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ListDetails' do
  before do
    # run before each test
    @instance = Iterable::ListDetails.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ListDetails' do
    it 'should create an instance of ListDetails' do
      expect(@instance).to be_instance_of(Iterable::ListDetails)
    end
  end
  describe 'test attribute "id"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "name"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "created_at"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "list_type"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
      # validator = Petstore::EnumTest::EnumAttributeValidator.new('String', ["Standard", "Dynamic", "Suppression", "Internal"])
      # validator.allowable_values.each do |value|
      #   expect { @instance.list_type = value }.not_to raise_error
      # end
    end
  end

end