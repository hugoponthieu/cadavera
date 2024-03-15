resource "openstack_compute_keypair_v2" "test_keypair" {
  provider   = openstack.ovh
  name       = "cadaveraHugo" 
  public_key = file("~/.ssh/id_ecdsa.pub") 
}

resource "openstack_compute_instance_v2" "test_terraform_instance" {
  name        = "cadavera" 
  provider    = openstack.ovh 
  image_name  = "Debian 12" 
  flavor_name = "s1-2" 
  availability_zone_hints= "DE1"
  key_pair    = openstack_compute_keypair_v2.test_keypair.name
  network {
    name      = "Ext-Net"
  }
}