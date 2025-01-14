---
page_title: "rudderstack_destination_google_analytics Resource - terraform-provider-rudderstack"
subcategory: ""
description: |-
  
---

# rudderstack_destination_google_analytics (Resource)

This resource represents a Google Analytics destination. For more information check 
https://www.rudderstack.com/docs/destinations/analytics/google-analytics-ga

## Example Usage

```terraform
resource "rudderstack_destination_google_analytics" "example" {
  name = "my-google-analytics"

  config {
    tracking_id = "UA-0000-0000"

    # double_click              = true
    # enhanced_link_attribution = true
    # include_search            = true
    # disable_md5               = true
    # anonymize_ip              = true
    # enhanced_ecommerce        = true
    # non_interaction           = true

    # server_side_identify {
    #   event_category = "..."
    #   event_action   = "..."
    # }

    # track_categorized_pages {
    #   web = true
    # }

    # track_named_pages {
    #   web = true
    # }

    # sample_rate {
    #   web = "1000"
    # }

    # site_speed_sample_rate {
    #   web = "1000"
    # }

    # set_all_mapped_props {
    #   web = true
    # }

    # domain {
    #   web = "..."
    # }

    # optimize {
    #   web = "..."
    # }

    # use_google_amp_client_id {
    #   web = true
    # }

    # named_tracker {
    #   web = true
    # }

    # use_native_sdk {
    #   web = true
    # }

    # event_filtering {
    #   whitelist = ["one", "two", "three"]
    #   blacklist = ["one", "two", "three"]
    # }

    # reset_custom_dimensions_on_page {
    #   web = ["one", "two", "three"]
    # }

    # onetrust_cookie_categories {
    #   web = ["one", "two", "three"]
    # }

    # content_groupings = [{
    #   from = "from"
    #   to   = "to"
    # }]

    # dimensions = [{
    #   from = "from"
    #   to   = "to"
    # }]
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `config` (Block List, Min: 1, Max: 1) Destination specific configuration. Check the nested block documenation for more information. (see [below for nested schema](#nestedblock--config))
- `name` (String) Human readable name of the destination. The value has to be unique across all the destinations.

### Optional

- `enabled` (Boolean) An enabled destination allows data to be sent to it.

### Read-Only

- `created_at` (String) Time when the resource was created, in ISO 8601 format.
- `id` (String) The ID of this resource.
- `updated_at` (String) Time when the resource was last updated, in ISO 8601 format.

<a id="nestedblock--config"></a>
### Nested Schema for `config`

Required:

- `tracking_id` (String) Enter your Google Analytics Tracking ID.

Optional:

- `anonymize_ip` (Boolean) Enabling this setting anonymizes your IP address information.
- `content_groupings` (List of Object) (see [below for nested schema](#nestedatt--config--content_groupings))
- `dimensions` (List of Object) (see [below for nested schema](#nestedatt--config--dimensions))
- `disable_md5` (Boolean) Enable this setting to disable client ID MD5 encryption.
- `domain` (Block List, Max: 1) Enter your cookie domain name. (see [below for nested schema](#nestedblock--config--domain))
- `double_click` (Boolean)
- `enhanced_ecommerce` (Boolean) Enable this setting to activate the enhanced e-commerce feature.
- `enhanced_link_attribution` (Boolean) Enable this setting to activate the Google Analytics enhanced link attribution feature.
- `event_filtering` (Block List, Max: 1) This setting allows you to specify which events should be blocked or allowed to flow through to Google Analytics. (see [below for nested schema](#nestedblock--config--event_filtering))
- `include_search` (Boolean) Enable this setting to include the querystring in `page` views.
- `named_tracker` (Block List, Max: 1) Enable this setting to send events with the `track` name `rudderGATracker`. (see [below for nested schema](#nestedblock--config--named_tracker))
- `non_interaction` (Boolean) Enable this setting to add the non-interaction flag to all the events.
- `onetrust_cookie_categories` (Block List, Max: 1) Specify the OneTrust category name for mapping the OneTrust consent settings to RudderStack's consent purposes. (see [below for nested schema](#nestedblock--config--onetrust_cookie_categories))
- `optimize` (Block List, Max: 1) Enter your Google Optimize Container ID. (see [below for nested schema](#nestedblock--config--optimize))
- `reset_custom_dimensions_on_page` (Block List, Max: 1) Use this field to reset the dimensions for the `page` calls. (see [below for nested schema](#nestedblock--config--reset_custom_dimensions_on_page))
- `sample_rate` (Block List, Max: 1) Enter the sample rate. (see [below for nested schema](#nestedblock--config--sample_rate))
- `send_user_id` (Boolean) Enable this setting to send the `userId` to Google Analytics.
- `server_side_identify` (Block List, Max: 1) (see [below for nested schema](#nestedblock--config--server_side_identify))
- `set_all_mapped_props` (Block List, Max: 1) Use this field to set all the mapped properties. (see [below for nested schema](#nestedblock--config--set_all_mapped_props))
- `site_speed_sample_rate` (Block List, Max: 1) Enter the site speed sample rate. (see [below for nested schema](#nestedblock--config--site_speed_sample_rate))
- `track_categorized_pages` (Block List, Max: 1) Enable this setting to track categorized pages. (see [below for nested schema](#nestedblock--config--track_categorized_pages))
- `track_named_pages` (Block List, Max: 1) Enable this setting to track named pages. (see [below for nested schema](#nestedblock--config--track_named_pages))
- `use_google_amp_client_id` (Block List, Max: 1) Enable this setting to use the Google AMP Client ID (see [below for nested schema](#nestedblock--config--use_google_amp_client_id))
- `use_native_sdk` (Block List, Max: 1) Enable this setting to send the events via the web device mode. (see [below for nested schema](#nestedblock--config--use_native_sdk))

<a id="nestedatt--config--content_groupings"></a>
### Nested Schema for `config.content_groupings`

Optional:

- `from` (String)
- `to` (String)


<a id="nestedatt--config--dimensions"></a>
### Nested Schema for `config.dimensions`

Optional:

- `from` (String)
- `to` (String)


<a id="nestedblock--config--domain"></a>
### Nested Schema for `config.domain`

Required:

- `web` (String)


<a id="nestedblock--config--event_filtering"></a>
### Nested Schema for `config.event_filtering`

Optional:

- `blacklist` (List of String) Enter the event names to be blacklisted..
- `whitelist` (List of String) Enter the event names to be whitelisted.


<a id="nestedblock--config--named_tracker"></a>
### Nested Schema for `config.named_tracker`

Required:

- `web` (Boolean)


<a id="nestedblock--config--onetrust_cookie_categories"></a>
### Nested Schema for `config.onetrust_cookie_categories`

Optional:

- `web` (List of String)


<a id="nestedblock--config--optimize"></a>
### Nested Schema for `config.optimize`

Required:

- `web` (String)


<a id="nestedblock--config--reset_custom_dimensions_on_page"></a>
### Nested Schema for `config.reset_custom_dimensions_on_page`

Required:

- `web` (List of String)


<a id="nestedblock--config--sample_rate"></a>
### Nested Schema for `config.sample_rate`

Required:

- `web` (String)


<a id="nestedblock--config--server_side_identify"></a>
### Nested Schema for `config.server_side_identify`

Required:

- `event_action` (String) Enter the server-side `identify` event action.
- `event_category` (String) Enter the server-side `identify` event category.


<a id="nestedblock--config--set_all_mapped_props"></a>
### Nested Schema for `config.set_all_mapped_props`

Optional:

- `web` (Boolean)


<a id="nestedblock--config--site_speed_sample_rate"></a>
### Nested Schema for `config.site_speed_sample_rate`

Required:

- `web` (String)


<a id="nestedblock--config--track_categorized_pages"></a>
### Nested Schema for `config.track_categorized_pages`

Optional:

- `web` (Boolean)


<a id="nestedblock--config--track_named_pages"></a>
### Nested Schema for `config.track_named_pages`

Optional:

- `web` (Boolean)


<a id="nestedblock--config--use_google_amp_client_id"></a>
### Nested Schema for `config.use_google_amp_client_id`

Required:

- `web` (Boolean)


<a id="nestedblock--config--use_native_sdk"></a>
### Nested Schema for `config.use_native_sdk`

Optional:

- `web` (Boolean)
