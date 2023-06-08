resource "local_file" "name" {
  filename = "${path.module}/files/rambo.txt"
  content  = var.file_content
}
