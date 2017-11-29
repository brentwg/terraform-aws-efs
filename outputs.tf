# --------------
# Module Outputs
# --------------
output "efs_filesystem_id" {
  value = "${aws_efs_file_system.this.id}"
}

output "efs_mount_target_id" {
  value = "${aws_efs_mount_target.efs_mount_target.*.id}"
}

output "efs_mount_target_dns_name" {
  value = "${aws_efs_mount_target.efs_mount_target.*.dns_name}"
}

output "efs_mount_target_network_interface_id" {
  value = "${aws_efs_mount_target.efs_mount_target.*.network_interface_id}"
}
