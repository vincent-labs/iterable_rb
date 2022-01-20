# Iterable::UpdateSubscriptionsRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**email** | **String** |  | [optional] 
**user_id** | **String** |  | [optional] 
**email_list_ids** | **Array&lt;Integer&gt;** | Lists that a user is subscribed to | [optional] 
**unsubscribed_channel_ids** | **Array&lt;Integer&gt;** | Email channel ids to unsubscribe from | [optional] 
**unsubscribed_message_type_ids** | **Array&lt;Integer&gt;** | Individual message type IDs to unsubscribe (does not impact channel subscriptions). | [optional] 
**subscribed_message_type_ids** | **Array&lt;Integer&gt;** | Individual message type IDs to subscribe (does not impact channel subscriptions). To set a value for this field, first have your CSM enable the opt-in message types feature. Otherwise, attempting to set this field causes an error. | [optional] 
**campaign_id** | **Integer** | Campaign to attribute unsubscribes | [optional] 
**template_id** | **Integer** | Template to attribute unsubscribes | [optional] 

