data "template_file" "init" {
  template = "${file("${path.module}/wordpress.sh")}"
}


resource "aws_launch_template" "example" {
  name_prefix            = "example"
  image_id               = "${data.aws_ami.image.id}"
  instance_type          = "c5.large"
  key_name               = "${aws_key_pair.asg-key-pair.key_name}"
  vpc_security_group_ids = ["${aws_security_group.asg-sec-group.id}"]
  user_data = "${base64encode(data.template_file.init.rendered)}"
  vpc_security_group_ids = ["${aws_security_group.asg-sec-group.id}"]


}
