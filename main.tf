module "vpc" {
  source         = "github.com/raghudevopsb70/tf-module-vpc"
  env            = var.env
  default_vpc_id = var.default_vpc_id

  for_each   = var.vpc
  cidr_block = each.value.cidr_block
}

module "subnets" {
  source         = "github.com/raghudevopsb70/tf-module-subnets"
  env            = var.env
  default_vpc_id = var.default_vpc_id

  for_each          = var.subnets
  cidr_block        = each.value.cidr_block
  availability_zone = each.value.availability_zone
  name              = each.value.name
  vpc_id            = lookup(lookup(module.vpc, each.value.vpc_name, null), "vpc_id", null)
}


output "vpc_id" {
  value = lookup(lookup(module.vpc, "main", null), "vpc_id", null)
}
