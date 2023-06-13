


resource "local_file" "name" {
  filename = "/home/sharhan/CHAMBER/repositories/KTECHHUB/devops-bc-2023/terraform/sandbox/files/pet.txt"
  content = var.file-content["statement2"]
}