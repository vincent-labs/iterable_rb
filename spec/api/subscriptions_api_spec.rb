=begin
#Iterable API

#No description provided (generated by Swagger Codegen https://github.com/swagger-api/swagger-codegen)

OpenAPI spec version: 1.8

Generated by: https://github.com/swagger-api/swagger-codegen.git
Swagger Codegen version: 3.0.32
=end

require 'spec_helper'
require 'json'

# Unit tests for Iterable::SubscriptionsApi
# Automatically generated by swagger-codegen (github.com/swagger-api/swagger-codegen)
# Please update as you see appropriate
describe 'SubscriptionsApi' do
  before do
    # run before each test
    @instance = Iterable::SubscriptionsApi.new
  end

  after do
    # run after each test
  end

  describe 'test an instance of SubscriptionsApi' do
    it 'should create an instance of SubscriptionsApi' do
      expect(@instance).to be_instance_of(Iterable::SubscriptionsApi)
    end
  end

  # unit tests for bulk_subscription_action
  # Bulk subscription action on a list of users
  # Update a subscription group for a bulk number of users. All users will have the same event on the given subscriptionGroup. To enable this API, please contact your CSM.
  # @param body user email
  # @param action subscribe or unsubscribe
  # @param subscription_group Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
  # @param subscription_group_id Subscription Group Id [Numeric]
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'bulk_subscription_action test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for subscribe_single_user
  # Subscribe a single user
  # Updates a user to be subscribed to the provided subscription group entity. &lt;br&gt;To enable this API, please contact your CSM.
  # @param subscription_group Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
  # @param subscription_group_id Subscription Group Id [Numeric]
  # @param user_email User&#x27;s Email [Alphanumeric]
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'subscribe_single_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for subscribe_single_user_by_user_id
  # Subscribe a single user by their userId
  # Updates a user to be subscribed to the provided subscription group entity. &lt;br&gt;To enable this API, please contact your CSM.
  # @param subscription_group Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
  # @param subscription_group_id Subscription Group Id [Numeric]
  # @param user_id User&#x27;s userId
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'subscribe_single_user_by_user_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unsubscribe_single_user
  # Unsubscribe a single user
  # Updates a user to be unsubscribed to the provided subscription group entity. &lt;br&gt;To enable this API, please contact your CSM.
  # @param subscription_group Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
  # @param subscription_group_id Subscription Group Id [Numeric]
  # @param user_email User&#x27;s Email [Alphanumeric]
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'unsubscribe_single_user test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  # unit tests for unsubscribe_single_user_by_user_id
  # Unsubscribe a single user by userId
  # Updates a user to be unsubscribed to the provided subscription group entity. &lt;br&gt;To enable this API, please contact your CSM.
  # @param subscription_group Subscription group (i.e.: emailList, messageType, messageChannel) [Alphanumeric, case insensitive]
  # @param subscription_group_id Subscription Group Id [Numeric]
  # @param user_id User&#x27;s userId
  # @param [Hash] opts the optional parameters
  # @return [IterableApiResponse]
  describe 'unsubscribe_single_user_by_user_id test' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
