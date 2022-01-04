module "catalogue" {
  source                 = "git::https://github.com/rayuduroyal/roboshop.git/terraform-mutable//app-module"
  INSTANCE_TYPE          = var.INSTANCE_TYPE
  ENV                    = var.ENV
  SPOT_INSTANCE_COUNT    = var.SPOT_INSTANCE_COUNT
  OD_INSTANCE_COUNT      = var.OD_INSTANCE_COUNT
  COMPONENT              = "catalogue"
  PORT                   = 8080
  IS_PRIVATE_IB          = true
  LB_RULE_PRIORITY       = 101
}

output "INSTANCE_IDS" {
  value = module.catalogue.INSTANCE_IDS
}