# Infrastructure as Code with Terraform — lesson m03l02 — Return Values: Outputs And Locals
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l02
# © LearnSome.tech
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
