# README #

This is Terraform module to create new Digital Ocean Droplet, move it to aleks-tf-test project and deploy new wordpress in docker-compose.

It contains main.tf, variables.tf and cloud-config.yml

Docker-compose contains: nginx-unit(builded from Dockerfile) witt php-fpm8.2, nginx, mysql, commented certbot for ssl certificates renewal 

### What is this repository for? ###

* Deploy wordpress in new Droplet by docker-compose
* User: app, group the same
* It using nginx-unit with php-fpm8.2 and nginx as a proxy

### How do I get set up? ###

# IMPORTANT! PLEASE CHANGE PASSWORD AND USER FOR MYSQL IN cloud-config.yml  #

* First of all you should set your do token in ENV "export do_token='your_digital_ocean_token'" - linux/ $env:do_token='your_digital_ocean_token' - powershell/set do_token='your_digital_ocean_token' in CMD.exe
* 'cd /your/terraform/project/path/dir'
* Than use 'terraform init' to init your project
* Next step is to plan your deploy 'terraform plan'
* 'terraform apply' -> yes

### Contribution guidelines ###

* Use commits and pull requests.

### Who do I talk to? ###

* Aleksandr Posazhennikov DevOps
