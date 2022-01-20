# Iterable::ApiInAppTemplateModel

## Properties
Name | Type | Description | Notes
------------ | ------------- | ------------- | -------------
**template_id** | **Integer** | In-app template ID | 
**name** | **String** | Name of the template | [optional] 
**html** | **String** | Html of the in-app notification | [optional] 
**in_app_display_settings** | [**InAppDisplaySettings**](InAppDisplaySettings.md) |  | [optional] 
**web_in_app_display_settings** | [**WebInAppDisplaySettings**](WebInAppDisplaySettings.md) |  | [optional] 
**payload** | **Object** | Payload | [optional] 
**expiration_date_time** | **DateTime** | The in-app message&#x27;s absolute expiration time. If set to a time before the campaign sends, contacts will never see the message. Format is &lt;code&gt;YYYY-MM-DD HH:MM:SS&lt;/code&gt; (UTC timestamp; time zones not allowed). If the request doesn&#x27;t specify &lt;code&gt;expirationDateTime&lt;/code&gt; or &lt;code&gt;expirationDuration&lt;/code&gt;, the default expiration is 90 days after send time. | [optional] 
**expiration_duration** | **String** | The in-app message&#x27;s expiration time, relative to its send time. Should be an expression such as &lt;code&gt;now+90d&lt;/code&gt;. For more information, read &lt;a href&#x3D;\&quot;https://support.iterable.com/hc/en-us/articles/360034903151#_3-configure-the-in-app-template-tab\&quot;&gt;this guide&lt;/a&gt;. If the request doesn&#x27;t specify &lt;code&gt;expirationDateTime&lt;/code&gt; or &lt;code&gt;expirationDuration&lt;/code&gt;, the default expiration is 90 days after send time. | [optional] 
**locale** | **String** | The locale for the content in this request. Leave empty for default locale. Iterable will automatically send the content with locale that matches a &#x27;locale&#x27; field in the user profile. | [optional] 
**client_template_id** | **String** | Client template Id. Used as a secondary key to reference the template | [optional] 
**message_type_id** | **Integer** | Message Type Id | [optional] 
**campaign_id** | **Integer** | Campaign ID | [optional] 

