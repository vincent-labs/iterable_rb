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

# Unit tests for Iterable::MessageMedium
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'MessageMedium' do
  before do
    # run before each test
    @instance = Iterable::MessageMedium.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of MessageMedium' do
    it 'should create an instance of MessageMedium' do
      expect(@instance).to be_instance_of(Iterable::MessageMedium)
    end
  end
end