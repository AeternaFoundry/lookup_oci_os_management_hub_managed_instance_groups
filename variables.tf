variable "os_management_hub_managed_instance_groups_lookup" {
  description = <<EOT
Map of os_management_hub_managed_instance_groups_lookup, attributes below
Optional:
    - arch_type
    - compartment_id
    - display_name
    - display_name_contains
    - is_managed_by_autonomous_linux
    - location
    - location_not_equal_to
    - managed_instance_group_id
    - os_family
    - software_source_id
    - state
    - filter (block):
        - name (required)
        - regex (optional)
        - values (required)
EOT

  type = map(object({
    arch_type                      = optional(string)
    compartment_id                 = optional(string)
    display_name                   = optional(list(string))
    display_name_contains          = optional(string)
    is_managed_by_autonomous_linux = optional(bool)
    location                       = optional(list(string))
    location_not_equal_to          = optional(list(string))
    managed_instance_group_id      = optional(string)
    os_family                      = optional(string)
    software_source_id             = optional(string)
    state                          = optional(string)
    filter = optional(list(object({
      name   = string
      regex  = optional(bool)
      values = list(string)
    })))
  }))
}

