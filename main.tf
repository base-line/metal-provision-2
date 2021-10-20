module "key" {
  source     = "git::github.com/andrewpopa/terraform-metal-project-ssh-key"
  project_id = var.project_id
}

data "template_file" "user_data" {
  template = file("bootstrap/pkg.sh")
}

module "device_user_data" {
  source = "git::github.com/andrewpopa/terraform-metal-device.git"

  hostname            = "tf-ubuntu-userdata"
  plan                = "t1.small.x86"
  facilities          = ["ams1"]
  operating_system    = "ubuntu_18_04"
  billing_cycle       = "hourly"
  project_id          = var.project_id
  project_ssh_key_ids = [module.key.id]
  user_data           = data.template_file.user_data.rendered
}