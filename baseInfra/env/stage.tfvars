environment = "stage"
aws_region  = "us-east-1"


private_ip_for_nat_gateway   = "10.1.0.5"
lb_certificate_arn           = "arn:aws:acm:us-east-1:243302161856:certificate/cde28de9-e4fb-4a5b-b17d-7954008353b3"
vpc_cidr_block               = "10.1.0.0/16"
public_subnet_1a_cidr_block  = "10.1.1.0/24"
public_subnet_1b_cidr_block  = "10.1.2.0/24"
private_subnet_1a_cidr_block = "10.1.11.0/24"
private_subnet_1b_cidr_block = "10.1.12.0/24"
rds_public_access            = true

# RDS
microservices = {
  coupon = {
    container_port = 8080
  },
  product = {
    container_port = 8081
  }
}
