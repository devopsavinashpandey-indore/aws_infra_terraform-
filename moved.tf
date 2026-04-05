# Preserve existing state addresses after refactor into modules (Terraform 1.1+).
# Remove this file only after apply has succeeded and you no longer need the migration.

moved {
  from = aws_vpc.main_vpc
  to   = module.vpc.aws_vpc.main
}

moved {
  from = aws_subnet.public_subnet
  to   = module.vpc.aws_subnet.public
}

moved {
  from = aws_subnet.private_subnet
  to   = module.vpc.aws_subnet.private
}

moved {
  from = aws_internet_gateway.igw
  to   = module.vpc.aws_internet_gateway.this
}

moved {
  from = aws_route_table.public_rt
  to   = module.vpc.aws_route_table.public
}

moved {
  from = aws_route.internet_access
  to   = module.vpc.aws_route.internet
}

moved {
  from = aws_route_table_association.public_assoc
  to   = module.vpc.aws_route_table_association.public
}

moved {
  from = data.aws_ami.ubuntu
  to   = module.ec2.data.aws_ami.ubuntu
}

moved {
  from = aws_instance.web_server
  to   = module.ec2.aws_instance.this
}
