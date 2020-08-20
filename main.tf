/*
Name_Of_Script:     ..\MyTerraformProject\main.tf
Created_By:         Priyanka Naveen
Created_On:         15th July, 2020
Purpose_Of_Script:  The file that invoke each module. It provides no configuration itself aside from declaring the
                    various provider(s) utilized by the framework

*/


provider "aws" {
  /*
  /* Terraform 0.11 and earlier required all non-constant expressions to be provided via interpolation syntax.
  /* But, now Interpolation-only expressions are deprecated
  /* region = "${var.region}"
  */
  region = "var.region"

}

/*
module "site" {
  source = "./site"
  key_name = "${var.key_name}"
  ip_range = "${var.ip_range}"
}
module "launch_configurations" {
  source = "./launch_configurations"
  webapp_http_inbound_sg_id = "${module.site.webapp_http_inbound_sg_id}"
  webapp_ssh_inbound_sg_id = "${module.site.webapp_ssh_inbound_sg_id}"
  webapp_outbound_sg_id = "${module.site.webapp_outbound_sg_id}"
  key_name = "${var.key_name}"
}
module "load_balancers" {
  source = "./load_balancers"
  public_subnet_id = "${module.site.public_subnet_id}"
  webapp_http_inbound_sg_id = "${module.site.webapp_http_inbound_sg_id}"
}
module "autoscaling_groups" {
  source = "./autoscaling_groups"
  public_subnet_id = "${module.site.public_subnet_id}"
  webapp_lc_id = "${module.launch_configurations.webapp_lc_id}"
  webapp_lc_name = "${module.launch_configurations.webapp_lc_name}"
  webapp_elb_name = "${module.load_balancers.webapp_elb_name}"
}
module "instances" {
  source = "./instances"
  public_subnet_id = "${module.site.public_subnet_id}"
  bastion_ssh_sg_id = "${module.site.bastion_ssh_sg_id}"
  private_subnet_id = "${module.site.private_subnet_id}"
  ssh_from_bastion_sg_id = "${module.site.ssh_from_bastion_sg_id}"
  web_access_from_nat_sg_id = "${module.site.web_access_from_nat_sg_id}"
  key_name = "${var.key_name}"

}
*/