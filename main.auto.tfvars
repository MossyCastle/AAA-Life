##############################################################################
# Variables File
#
# Here is where we store the default values for all the variables used in our
# Terraform code. If you create a variable with no default, the user will be
# prompted to enter it (or define it via config file or command line flags.)

/* variable "prefix" {
  description = "This prefix will be included in the name of most resources."
} */


   
  region     = "us-east-1"
  address_space     = "10.0.0.0/16"
  subnet_prefix     = "10.0.10.0/24"

/*
variable "instance_type" {
//  description = "Specifies the AWS instance type."
  instance_type    = "t2.micro"
}

variable "admin_username" {
//  description = "Administrator user name for mysql"
  admin_username  = "hashicorp"
}

variable "height" {
  height     = "400"
 // height = "Image height in pixels."
}

variable "width" {
  width     = "600"
//  description = "Image width in pixels."
}

variable "placeholder" {
  placeholder     = "placekitten.com"
//  description = "Image-as-a-service URL. Some other fun ones to try are fillmurray.com, placecage.com, placebeard.it, loremflickr.com, baconmockup.com, placeimg.com, placebear.com, placeskull.com, stevensegallery.com, placedog.net"
}
*/
