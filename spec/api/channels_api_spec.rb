=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

require 'spec_helper'
require 'json'

# Unit tests for Iterable::ChannelsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'ChannelsApi' do
  before do
    # run before each test
    @instance = Iterable::ChannelsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of ChannelsApi' do
    it 'should create an instance of ChannelsApi' do
      expect(@instance).to be_instance_of(Iterable::ChannelsApi)
    end
  end

  # unit tests for channels
  # Get channels
  # Get all message channels within the project. &lt;b&gt;Rate limit&lt;/b&gt;: 100 requests/second, per project.
  # @param [Hash] opts the optional parameters
  # @return [ChannelsResponse]
  describe 'channels test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end