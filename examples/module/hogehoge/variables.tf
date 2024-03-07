variable "name" {
  type        = string
  description = "SNS Topicの名称"
}

variable "emails" {
  type        = list(string)
  description = "メール"
  default     = []
}
