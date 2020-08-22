data "aws_ami" "image" {
  most_recent = true
  owners      = ["${var.image_owner}"] #137112412989   AWS AMI 
}
