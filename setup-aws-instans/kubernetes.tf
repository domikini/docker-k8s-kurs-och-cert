provider "aws" {
  profile = "default"
  region  = "eu-north-1"
}

resource "aws_instance" "domcha-minikube" {
  count         = var.instance_count
  ami           = "ami-0efda064d1b5e46a5"
  instance_type = var.instance_type
  key_name = "AWS linux demo"
  security_groups = ["domcha-kubelab-nodes"]
  tags = {
    owner    = "domcha"
    kuberole = "master"
    Name = "knowit-minikube-${count.index + 1}"
    Batch = "5AM"
  }
  user_data = file(var.provisioning_file)
  root_block_device {
    volume_size = var.root_block_device_size
  }
}

variable "root_block_device_size" {
  description = "Size of the root block device in gigabytes"
  default     = 30
}

variable "instance_count" {
 default = "45"
}

variable "instance_type" {
 default = "t3.large"
}

variable "provisioning_file" {
 default = "./provision.sh"
}
