# Iterable::BulkUpdateSubscriptionsResponse

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**success_count** | **Integer** | Number of users successfully updated | 
**fail_count** | **Integer** | Number of users that weren&#x27;t updated (due to invalid email or internal error) | 
**invalid_emails** | **Array&lt;String&gt;** | A list of emails that weren&#x27;t updated because they are invalid | 
**invalid_user_ids** | **Array&lt;String&gt;** | A list of userIds that weren&#x27;t updated because they are invalid | 
**valid_email_failures** | **Array&lt;String&gt;** | A list of emails that weren&#x27;t updated due to internal error | 
**valid_user_id_failures** | **Array&lt;String&gt;** | A list of userIds that weren&#x27;t updated due to internal error | 

