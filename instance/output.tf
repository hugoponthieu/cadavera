output "ip_cadavera" {
  value = openstack_compute_instance_v2.test_terraform_instance.access_ip_v4
}
