data "oci_os_management_hub_managed_instance_groups" "os_management_hub_managed_instance_groups_lookup" {
  for_each = var.os_management_hub_managed_instance_groups_lookup

  arch_type                      = each.value.arch_type
  compartment_id                 = each.value.compartment_id
  display_name                   = each.value.display_name
  display_name_contains          = each.value.display_name_contains
  is_managed_by_autonomous_linux = each.value.is_managed_by_autonomous_linux
  location                       = each.value.location
  location_not_equal_to          = each.value.location_not_equal_to
  managed_instance_group_id      = each.value.managed_instance_group_id
  os_family                      = each.value.os_family
  software_source_id             = each.value.software_source_id
  state                          = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

