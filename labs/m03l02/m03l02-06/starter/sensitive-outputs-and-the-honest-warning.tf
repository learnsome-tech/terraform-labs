output "admin_password" {
  value     = random_password.admin.result
  sensitive = true
}
terraform output admin_password        (sensitive value)
terraform output -raw admin_password   prints it, on purpose
