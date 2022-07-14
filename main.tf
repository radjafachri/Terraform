# Define required providers
terraform {
required_version = ">= 0.14.0"
  required_providers {
    openstack = {
      source  = "terraform-provider-openstack/openstack"
      version = "~> 1.47.0"
    }
  }
}
provider "openstack" {
  user_name   = "radja"
  tenant_name = "VDS3"
  password    = "R*********"
  auth_url    = "https://l*n*.************.com:5000/v2.0"
  region      = "RegionOne"
}
resource "openstack_compute_instance_v2" "VDS3" {
  name = "vm-fachri"
  image_id = "4dce3811-9dd4-4303-9457-b8fdbde89beb"
  flavor_id = "89a7cb1e-ad10-4df7-87ad-099dfcaa6a05"
  security_groups = ["default"]
}
