# Iterable::TargetWebPushRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaign_id** | **Integer** |  | 
**recipient_email** | **String** |  | [optional] 
**recipient_user_id** | **String** |  | [optional] 
**data_fields** | **Object** | Fields to merge into template | [optional] 
**send_at** | **String** | Schedule the message for up to 365 days in the future. If set in the past, message is sent immediately. Format is YYYY-MM-DD HH:MM:SS in UTC | [optional] 
**allow_repeat_marketing_sends** | **BOOLEAN** | Allow repeat marketing sends? Defaults to true. | [optional] 

