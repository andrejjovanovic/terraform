/* variable "newvariable" {
    type = "string"
    default = "thisvalue"
}

variable "maptype" {
  type = "map"
  default = {

      subnet1 = "subnet1"
      subnet2 = "subnet2"
      subnet3 = "bettersubnet3"
  }
}

variable "listtype" {
  type = "list"
  default = ["item1","item2"]
}
 */

// Google Compute Platform Variables

variable "network_name" {
  default     = "thenewnet"
  type        = "string"
  description = "Just the network name for the Google Cloud Platform"
}

variable "new_value" {

}

variable "newmap" {
  type = "map"
}


variable "gcp_ip_cidr_range" {
  default     = "10.0.0.0/16"
  type        = "string"
  description = "IP CIDR Range for Google VPC"
}

variable "aws_ip_cidr_range" {
  default     = "10.0.0.0/24"
  type        = "string"
  description = "IP CIDR Range for AWS VPC"
}
variable "subnet_names" {
  type = "map"

  default = {
    subnet1 = "subnetone"
    subnet2 = "subnettwo"
    subnet3 = "subnetthree"
  }
}

output "first_output" {
  value = "${aws_subnet.subnet1.cidr_block}"
}

