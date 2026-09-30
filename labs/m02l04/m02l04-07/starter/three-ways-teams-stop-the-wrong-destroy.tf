lifecycle {
  prevent_destroy = true          refuse to plan a destroy of this resource
}

terraform destroy -target=...     narrow it, and know the risks
branch protection and review      the destroy nobody can run alone
