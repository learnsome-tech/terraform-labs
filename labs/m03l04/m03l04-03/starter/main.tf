resource "local_file" "copy" {
  filename = "copy.txt"
  content = data.local_file.source.content
}
