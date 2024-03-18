terraform {
  required_version = ">= 0.14.0" # Takes into account Terraform versions from 0.14.0
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.42.0"
    }

    ovh = {
      source  = "ovh/ovh"
      version = ">= 0.13.0"
    }
  }
}

# Configure the OpenStack provider hosted by OVHcloud
provider "openstack" {
  auth_url    = "https://auth.cloud.ovh.net/v3/" # Authentication URL
  domain_name = "default"                        # Domain name - Always at 'default' for OVHcloud
  alias       = "ovh"                            # An alias
}

provider "ovh" {
  alias              = "ovh"
  endpoint           = "ovh-eu"
  application_key    = "5662781c0b5418d2"
  application_secret = "476f6026884867ad4aa134031e19b661"
  consumer_key       = "8d709ce712a2ab3c2fd6732420933711"
}
