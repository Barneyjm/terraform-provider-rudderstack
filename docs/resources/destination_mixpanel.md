---
page_title: "rudderstack_destination_mixpanel Resource - terraform-provider-rudderstack"
subcategory: ""
description: |-
  
---

# rudderstack_destination_mixpanel (Resource)

This resource represents a MixPanel destination. For more information check 
https://www.rudderstack.com/docs/destinations/streaming-destinations/mixpanel/

## Example Usage

```terraform
resource "rudderstack_destination_mixpanel" example{
  name = "my-mixpanel"

  config {
    token = "..."
    data_residency = "us"
    persistence = "none"
    # api_secret = "..."
    # people = true
    # set_all_traits_by_default = true
    # consolidated_page_calls = true
    # track_categorized_pages = true
    # track_named_pages = true
    # source_name = "my-mixpanel"
    # cross_subdomain_cookie = true
    # secure_cookie = true
    # super_properties = ["one","two","three"]
    # people_properties = ["one","two","three"]
    # event_increments = ["one","two","three"]
    # prop_increments = ["one","two","three"]
    # group_key_settings = ["one","two","three"]
    
    # use_native_sdk {
    #   web = true
    # }

    # event_filtering {
    #   whitelist = ["one", "two", "three"]
    #   blacklist = ["one","two","three"]
    # }

    # onetrust_cookie_categories {
    #   web = ["one", "two", "three"]
    # }
  }
}
```

<!-- schema generated by tfplugindocs -->
## Schema

### Required

- `config` (Block List, Min: 1, Max: 1) Destination specific configuration. Check the nested block documenation for more information. (see [below for nested schema](#nestedblock--config))
- `name` (String) Human readable name of the destination. The value has to be unique across all destinations.

### Optional

- `enabled` (Boolean) An enabled destination allows data to be sent to it.

### Read-Only

- `created_at` (String) Time when the resource was created, in ISO 8601 format.
- `id` (String) The ID of this resource.
- `updated_at` (String) Time when the resource was last updated, in ISO 8601 format.

<a id="nestedblock--config"></a>
### Nested Schema for `config`

Required:

- `data_residency` (String) Mixpanel Server region either us/eu
- `persistence` (String) Choose persistence for Mixpanel SDK. One of none|cookie|localStorage
- `token` (String, Sensitive) Mixpanel API Token

Optional:

- `api_secret` (String, Sensitive) Mixpanel API secret
- `consolidated_page_calls` (Boolean) This will track Loaded a Page events to Mixpanel for all page method calls. We enable this by default as it's how Mixpanel suggests sending these calls.
- `cross_subdomain_cookie` (Boolean) This will allow the Mixpanel cookie to persist between different pages of your application.
- `event_filtering` (Block List, Max: 1) With this option, you can determine which events are blocked or allowed to flow through to Mixpanel. (see [below for nested schema](#nestedblock--config--event_filtering))
- `event_increments` (List of String) Events to increment in People
- `group_key_settings` (List of String) Group Key
- `onetrust_cookie_categories` (Block List, Max: 1) Specify the OneTrust category name for mapping the OneTrust consent settings to RudderStack's consent purposes. (see [below for nested schema](#nestedblock--config--onetrust_cookie_categories))
- `people` (Boolean) Boolean flag to send all of your identify calls to Mixpanel's People feature
- `people_properties` (List of String) Traits to set as People Properties
- `prop_increments` (List of String) Properties to increment in People
- `secure_cookie` (Boolean) This will mark the Mixpanel cookie as secure, meaning it will only be transmitted over https
- `set_all_traits_by_default` (Boolean) While this is checked, our integration automatically sets all traits on identify calls as super properties and people properties if Mixpanel People is checked as well.
- `source_name` (String) This value, if it's not blank, will be sent as rudderstack_source_name to Mixpanel for every event/page/screen call.
- `super_properties` (List of String) Property to send as super Properties
- `track_categorized_pages` (Boolean) This will track events to Mixpanel for page method calls that have a category associated with them. For example page('Docs', 'Index') would translate to Viewed Docs Index Page.
- `track_named_pages` (Boolean) This will track events to Mixpanel for page method calls that have a name associated with them. For example page('Signup') would translate to Viewed Signup Page.
- `use_native_sdk` (Block List, Max: 1) Enable this setting to send the events via the device mode. (see [below for nested schema](#nestedblock--config--use_native_sdk))

<a id="nestedblock--config--event_filtering"></a>
### Nested Schema for `config.event_filtering`

Optional:

- `blacklist` (List of String) Enter the event names to be blacklisted.
- `whitelist` (List of String) Enter the event names to be whitelisted.


<a id="nestedblock--config--onetrust_cookie_categories"></a>
### Nested Schema for `config.onetrust_cookie_categories`

Optional:

- `web` (List of String)


<a id="nestedblock--config--use_native_sdk"></a>
### Nested Schema for `config.use_native_sdk`

Optional:

- `web` (Boolean)