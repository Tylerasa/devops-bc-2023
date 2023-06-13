


variable "prefix" {
  default = [ 1, 2, 3 ]
  type = list(number)
}


variable "file-content" {
  default = {
    "statement1" = "my pet 1"
    "statement2" = "my pet 2"
  }
}