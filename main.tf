# --------------
# EFS Filesystem
# --------------
resource "aws_efs_file_system" "this" {
  creation_token = "${var.customer_name}-${var.environment}"

  tags {
    Name        = "${var.customer_name}_${var.environment}_efs"
    Environment = "${var.environment}"
    Terraform   = "true"
  }
}


# -----------------
# EFS Mount targets
# -----------------
resource "aws_efs_mount_target" "efs_mount_target" {
  count           = "${var.subnet_count}"
  file_system_id  = "${aws_efs_file_system.this.id}"
  subnet_id       = "${element(var.subnet_ids, count.index)}"
  security_groups = ["${var.security_groups}"]
}
