
variable "os" {
  type        = string
  default     = "ami-04e601abe3e1a910f"
  description = "This is my ami ID."
}

variable "size" {
  default     = "t2.micro"
}

variable "name" {
  default     = "Terraform_demo"
}

#-var flag in cli prompt
# -var="bucket_name=mereys3demo"
variable "bucket_name" {
default = "dededede34cq344bd"
}

#-var-file="testing.tfvars" for diff envs
variable "username" {

}