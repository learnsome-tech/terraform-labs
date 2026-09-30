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
