#############################################################
# MAIN #
#############################################################

provider "aws" {
	region = "${var.aws_region}"
	}

###########################################################
# MODULES #
###########################################################

module "efs" {
	source = "./module"
	subnet_count = "${var.subnet_count}"
	vpc_subnet_cidr	= "${var.vpc_subnet_cidr}"
	}