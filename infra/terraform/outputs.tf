resource "local_file" "ansible_inventory" {
  content = templatefile("./output-templates/inventory.template", {
    nginx_public_ip    = azurerm_public_ip.nginx.ip_address,
    nginx_user         = var.admin_username,

    consul_private_ip  = azurerm_network_interface.consul_nic.private_ip_address,
    consul_user        = var.admin_username
  })
  filename = "../../ansible/inventory"
}
