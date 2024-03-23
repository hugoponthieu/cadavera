output "ip_cadavera" {
  value = openstack_compute_instance_v2.test_terraform_instance.access_ip_v4
}

resource "local_file" "foo" {
  content  = "[mesmachines]\n ovhInstance ansible_user=debian ansible_host=${openstack_compute_instance_v2.test_terraform_instance.access_ip_v4}"
  filename = "../setup/inventory"
}
