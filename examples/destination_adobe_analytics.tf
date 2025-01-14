resource "rudderstack_destination_adobe_analytics" "example" {
  name = "my-adobe-analytics"

  config {
    tracking_server_url = "http://sampleurl.com"
    report_suite_ids    = "id003, id004"
    # tracking_server_secure_url = "https://securesampleurl.com"
    # ssl_heartbeat = true
    # heartbeat_tracking_server_url= "http://heartbeaturl.com"
    # use_utf8_charset = false
    # use_secure_server_side = false
    # proxy_normal_url = "http://normalproxy.com"
    # proxy_heartbeat_url = "http://heartbeatproxy.com"
    # marketing_cloud_org_id = "test_234"
    # drop_visitor_id = false
    # timestamp_optional_reporting = true
    # no_fallback_visitor_id = false
    # prefer_visitor_id = false
    # track_page_name = false
    # context_data_prefix = "ruddertest"
    # use_legacy_link_name = false
    # page_name_fallback_tostring = false
    # send_false_values = false
    # product_identifier = "sku"
    # events_to_types = [{
    #   from = "video start"
    #   to   = "heartbeatPlaybackStarted"
    # }]
    # list_delimiter = [{
    #   from = "listPhone"
    #   to   = ","
    # }]
    # props_delimiter = [{
    #   from = "customPhone"
    #   to   = ","
    # }]
    # event_merch_properties = [
    #   "currency"
    # ]
    # product_merch_properties = [
    #   "currency"
    # ]
    # event_filtering {
    #   blacklist = ["one", "two", "three"]
    # }
    # rudder_events_to_adobe_events = [{
    #   from = "product searched"
    #   to   = "ps1,ps2"
    # }]
    # context_data_mapping = [{
    #   from = "page.name"
    #   to   = "pName"
    # }]
    # mobile_event_mapping = [{
    #   from = "page.name"
    #   to   = "pName"
    # }]
    # e_var_mapping = [{
    #   from = "phone"
    #   to   = "1"
    # }]
    # hier_mapping = [{
    #   from = "phone"
    #   to   = "1"
    # }]
    # list_mapping = [{
    #   from = "listPhone"
    #   to   = "1"
    # }]
    # custom_props_mapping = [{
    #   from = "phone"
    #   to   = "1"
    # }]
    # event_merch_event_to_adobe_event = [{
    #   from = "Order Completed"
    #   to   = "merchEvent1"
    # }]
    # product_merch_event_to_adobe_event = [{
    #   from = "Product Ordered"
    #   to   = "MerchProduct1"
    # }]
    # product_merch_evars_map = [{
    #   from = "phone"
    #   to   = "1"
    # }]
    # use_native_sdk {
    #   web          = true
    #   ios          = true
    #   android      = false
    #   react_native = true
    #  }
    # onetrust_cookie_categories {
    #   web = ["one", "two", "three"]
    # }
  }
}
