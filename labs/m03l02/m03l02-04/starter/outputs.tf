output "manifest_path" {
  description = "File this configuration wrote."
  value       = local_file.manifest.filename
}
output "machine_names" {
  description = "Every machine name, in order."
  value       = local.machine_names
}
output "summary" {
  description = "One line a human can read after an apply."
  value       = "${var.environment}: ${var.instance_count} machines"
}
