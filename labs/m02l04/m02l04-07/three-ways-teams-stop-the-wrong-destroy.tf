# Infrastructure as Code with Terraform — lesson m02l04 — Tearing It Down With Destroy
# https://learnsome.tech/courses/terraform-course/watch?lesson=m02l04
# © LearnSome.tech
lifecycle {
  prevent_destroy = true          refuse to plan a destroy of this resource
}

terraform destroy -target=...     narrow it, and know the risks
branch protection and review      the destroy nobody can run alone
