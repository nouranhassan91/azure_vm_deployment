output "windows_vm_name" {
  value = azurerm_windows_virtual_machine.vm.name
}

output "linux_vm_name" {
  value = azurerm_linux_virtual_machine.vm_linux.name
}

output "public_ip" {
  value = azurerm_public_ip.public_ip.ip_address
}
