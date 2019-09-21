locals {
  projeto = "crm-dynamics"

  tags {
    Environment = "${var.environment}"
    Projeto     = "${local.projeto}"
  }
}