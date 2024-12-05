resource "azurerm_lb_backend_address_pool" "lb_backend_address_pool" {
  for_each = local.lb_backend_address_pools

  name            = each.value.name
  loadbalancer_id = each.value.loadbalancer_id
}

output "lb_backend_address_pool" {
  value = var.enable_output ? azurerm_lb_backend_address_pool.lb_backend_address_pool[*] : null
}
