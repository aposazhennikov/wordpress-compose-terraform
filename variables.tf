variable "do_token" {}

variable "project_name" {
  description = "Project name"
  type        = string
  default     = "aleks-test-tf"
}


variable "ssh_key" {
  description = "SSH key name which we want to add to the droplet"
  default     = "Aleks"
}

variable "image" {
  description = "Default image"
  default     = "debian-12-x64"
}


variable "droplet_name" {
  description = "Default droplet name"
  default     = "tf-web-test"

}


variable "droplet_size" {
  description = "Default droplet size(low cost)"
  default     = "s-1vcpu-1gb"

}

variable "list_of_tags" {
  description = "Default tags"
  default     = ["aleks-test-tf", "just-new-tf-tag", "docker-compose", "wordpress-tf"]

}

variable "pvt_key" {
  description = "Path to the ppt key"
  default     = "C:/keys/legalbet_aleksandr_private.ppk"

}

variable "region" {
  description = "Default region in which we are going to create our new Droplet"
  default     = "fra1"
}

variable "MY_IP" {
  description = "Just default my_ip"
  default     = "0.0.0.0"

}

variable "EMAIL" {
  description = "Just default email for certbot"
  default     = "aleksandr.posazhennikov@example.com"

}

variable "DOMAIN" {
  description = "Just default domain for certbot"
  default     = "test.example.com"

}
