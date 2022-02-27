data "template_file" "init" {
  template = "${file("ddos.tpl")}"

  vars = {
    address = "${var.address}"
  }
}

resource "aws_launch_configuration" "ukraine-ddos" {
  name          = "ukraine-ddos"
  image_id      = "ami-07640f1f9d7e84676"
  instance_type = "t2.micro"

  spot_price    = "0.005"


  user_data = data.template_file.init.rendered
}

resource "aws_autoscaling_group" "ukraine-ddos" {
  name                 = "ukraine"
  launch_configuration = aws_launch_configuration.ukraine-ddos.name
  min_size             = var.servers
  max_size             = var.servers
  availability_zones = ["eu-central-1a","eu-central-1b","eu-central-1c"]

  lifecycle {
    create_before_destroy = true
  }

   tag {
    key                 = "ddos"
    value               = "ukraine"
    propagate_at_launch = true
  }
}