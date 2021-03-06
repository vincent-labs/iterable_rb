=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

require 'spec_helper'
require 'json'

# Unit tests for Iterable::WorkflowsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'WorkflowsApi' do
  before do
    # run before each test
    @instance = Iterable::WorkflowsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of WorkflowsApi' do
    it 'should create an instance of WorkflowsApi' do
      expect(@instance).to be_instance_of(Iterable::WorkflowsApi)
    end
  end

  # unit tests for trigger_workflow
  # Trigger a workflow
  # Trigger a workflow. Triggering with a list is asynchronous. If a list trigger is in progress, it must finish before the same list can be triggered again for a particular workflow. The workflow stats may take several minutes to update if other workflows are running.
  # @param body Trigger workflow request
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'trigger_workflow test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
