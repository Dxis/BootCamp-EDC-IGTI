variable "Name_s3" {
  type        = string
  default     = "datalake"
  description = "Nome do data lake"
}

variable "Nm_Projeto" {
  type        = string
  default     = "dxis"
  description = "Usuario do datalake"
}

variable "Nm_CentroCusto_tf" {
  type        = string
  default     = "terraform"
  description = "Centro de custo "
}


variable "Nm_CentroCusto_s3" {
  type        = string
  default     = "s3"
  description = "Centro de custo "
}


