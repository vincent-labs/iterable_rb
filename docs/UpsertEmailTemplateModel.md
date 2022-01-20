# Iterable::UpsertEmailTemplateModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**client_template_id** | **String** | Id used by the client to identify a template. If multiple templates exist with the Id, all will be updated | 
**name** | **String** | Name of the template | [optional] 
**from_name** | **String** | From name | [optional] 
**from_email** | **String** | From email (must be an authorized sender) | [optional] 
**reply_to_email** | **String** | Reply to email | [optional] 
**subject** | **String** | Subject | [optional] 
**preheader_text** | **String** | Preheader text | [optional] 
**cc_emails** | **Array&lt;String&gt;** | CC emails | [optional] 
**bcc_emails** | **Array&lt;String&gt;** | BCC emails | [optional] 
**html** | **String** | HTML contents | [optional] 
**plain_text** | **String** | Plain text contents | [optional] 
**google_analytics_campaign_name** | **String** | Google analytics utm_campaign value | [optional] 
**link_params** | [**Array&lt;LinkParam&gt;**](LinkParam.md) | Parameters to append to each URL in html contents | [optional] 
**data_feed_id** | **Integer** | [Deprecated - use dataFeedIds instead] Id for data feed used in template rendering | [optional] 
**data_feed_ids** | [**Array&lt;BigDecimal&gt;**](BigDecimal.md) | Ids for data feeds used in template rendering | [optional] 
**cache_data_feed** | **Object** | Cache data feed lookups for 1 hour | [optional] 
**merge_data_feed_context** | **BOOLEAN** | Merge data feed contents into user context, so fields be referenced by {{field}} instead of [[field]] | [optional] 
**locale** | **String** | The locale for the content in this request. Iterable will automatically pick the content with locale that matches a &#x27;locale&#x27; field in the user profile. | [optional] 
**message_type_id** | **Integer** | Message Type Id | [optional] 
**creator_user_id** | **String** | Specify a specific creator user id (email). The email must be an existing member of the project. Defaults to the organization creator. | [optional] 
**message_medium** | [**MessageMedium**](MessageMedium.md) |  | 

