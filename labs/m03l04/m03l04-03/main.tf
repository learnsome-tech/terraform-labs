# Infrastructure as Code with Terraform — lesson m03l04 — Querying Existing Infrastructure With Data Sources
# https://learnsome.tech/courses/terraform-course/watch?lesson=m03l04
# © LearnSome.tech
resource "local_file" "source" {
  filename = "source.txt"
  content = "managed elsewhere"
}
data "local_file" "source" {
  filename = local_file.source.filename
}
resource "local_file" "copy" {
  filename = "copy.txt"
  content = data.local_file.source.content
}
