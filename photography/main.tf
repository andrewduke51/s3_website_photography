###############
#  S3 Bucket  #
###############

provider "aws" {
  region                  = "${var.default_region}"
  shared_credentials_file = "${var.shared_profile}"
  profile                 = "${var.profile_name}"
}

resource "aws_s3_bucket" "sophia_bucket" {
  region = "${var.default_region}"
  bucket = "${var.bucket_name}"
  acl = "${var.acl}"
  policy = "${data.template_file.policy.rendered}"
  versioning = {
    enabled = "${var.versioning}"
  }

  tags {
    name = "${var.bucket_name}"
  }
}

data "template_file" "policy" {
  template = "${file("${path.module}/policy.json.tpl")}"
  vars {
    bucket_id = "${var.bucket_name}"
  }
}
