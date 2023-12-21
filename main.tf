terraform {
  required_providers {
    digitalocean = {
      source = "digitalocean/digitalocean"
      version = "2.34.0"
    }
  }
}

# 1. Configure the DigitalOcean Provider

provider "digitalocean" {
  token = var.do_token

}


# 2. Getting data from Project "test"

data "digitalocean_project" "project_name" {
  name = var.project_name
}

# 3.  Getting data about SSH Key 'Aleks' from DigitlOcean

data "digitalocean_ssh_key" "ssh_key" {
  name = var.ssh_key
}
# 4. Create a web server in region Frankfurt adding name, image, size, and ssh_key Alkes And also create some tags!

data "template_file" "cloud-init-yaml" {
  template = file("${path.module}/cloud-config.yml")
   vars = {
     MY_IP = var.MY_IP
     EMAIL = var.EMAIL
     DOMAIN = var.DOMAIN
   }
}


resource "digitalocean_droplet" "digitalocean_droplet" {

  image    = var.image
  name     = var.droplet_name
  region   = var.region
  size     = var.droplet_size
  ssh_keys = [
      data.digitalocean_ssh_key.ssh_key.id
    ]
  tags    = var.list_of_tags
  user_data = data.template_file.cloud-init-yaml.rendered
}



# 5. Moving our created Droplet to the Project project_name 

resource "digitalocean_project_resources" "web_by_tf" {
  project = data.digitalocean_project.project_name.id
  resources = [
    digitalocean_droplet.digitalocean_droplet.urn
  ]
} 

