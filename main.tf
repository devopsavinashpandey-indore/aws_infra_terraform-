module "vpc" {
  source = "./modules/vpc"

  vpc_cidr            = var.vpc_cidr
  public_subnet_cidr  = var.public_subnet_cidr
  private_subnet_cidr = var.private_subnet_cidr
  name_prefix         = var.name_prefix
}

module "security_group" {
  source = "./modules/security_group"

  vpc_id      = module.vpc.vpc_id
  name_prefix = var.name_prefix
  allow_ssh   = var.allow_ssh
  ssh_cidr    = var.ssh_cidr
  http_cidr   = var.http_cidr
}

module "s3" {
  source = "./modules/s3"

  name_prefix       = var.name_prefix
  bucket_name       = var.s3_bucket_name
  enable_versioning = var.s3_enable_versioning
}

module "iam_ec2_s3" {
  source = "./modules/iam_ec2_s3"

  name_prefix   = var.name_prefix
  s3_bucket_arn = module.s3.bucket_arn
}

module "ec2" {
  source = "./modules/ec2"

  subnet_id              = module.vpc.public_subnet_id
  instance_type          = var.instance_type
  instance_name          = var.instance_name
  vpc_security_group_ids = [module.security_group.security_group_id]
  iam_instance_profile   = module.iam_ec2_s3.instance_profile_name
}
