data "local_file" "name" {
  filename = "${path.module}/files/rambo.txt"
}

output "file_output" {
  value = data.local_file.name.content
}
