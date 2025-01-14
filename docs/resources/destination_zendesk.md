---
page_title: "rudderstack_destination_zendesk Resource - terraform-provider-rudderstack"
subcategory: ""
description: |-
  
---

# rudderstack_destination_zendesk (Resource)

This resource represents a Zendesk destination. For more information check 
https://www.rudderstack.com/docs/destinations/crm/zendesk

## Example Usage

```terraform
resource "rudderstack_destination_zendesk" "example" {
  name = "my-zendesk"

  config {
    email     = "test@example.com"
    api_token = "..."
    domain    = "..."

    create_users_as_verified         = false
    send_group_calls_without_user_id = false
    remove_users_from_organization   = false
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

- `api_token` (String, Sensitive) Enter the Zendesk API token used to authenticate the request. To create an API token, refer to this [Zendesk support page](https://support.zendesk.com/hc/en-us/articles/226022787-Generating-a-new-API-token-).
- `domain` (String) Enter your Zendesk subdomain without `.zendesk.com`
- `email` (String) Enter the email used to log into your Zendesk dashboard.

Optional:

- `create_users_as_verified` (Boolean) Enabling this setting creates verified users in Zendesk, that is, the email verification is skipped.
- `remove_users_from_organization` (Boolean) Enable this setting to remove users from an organization.
- `send_group_calls_without_user_id` (Boolean) Enable this setting if you don't want to associate the user with a group.
