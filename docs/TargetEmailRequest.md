# Iterable::TargetEmailRequest

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**campaign_id** | **Integer** | Campaign ID | 
**recipient_email** | **String** | Either email or userId must be passed in to identify the user. If both are passed in, email takes precedence. | [optional] 
**recipient_user_id** | **String** | UserId that was passed into the updateUser call | [optional] 
**data_fields** | **Object** | Fields to merge into email template | [optional] 
**send_at** | **String** | Schedule the message for up to 365 days in the future. If set in the past, email is sent immediately. Format is YYYY-MM-DD HH:MM:SS in UTC | [optional] 
**allow_repeat_marketing_sends** | **BOOLEAN** | Allow repeat marketing sends? Defaults to true. | [optional] 
**metadata** | **Object** | Metadata to pass back via webhooks. Not used for rendering | [optional] 

