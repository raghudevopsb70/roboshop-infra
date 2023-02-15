env            = "dev"
default_vpc_id = "vpc-075435ce9af088bfa"

vpc = {
  main = {
    cidr_block = "10.0.0.0/16"
  }
}

subnets = {
  public = {
    name              = "public"
    vpc_name          = "main"
    cidr_block        = ["10.0.0.0/24", "10.0.1.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b"]
  }
  web = {
    name              = "web"
    vpc_name          = "main"
    cidr_block        = ["10.0.2.0/24", "10.0.3.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b"]
  }
  app = {
    name              = "app"
    vpc_name          = "main"
    cidr_block        = ["10.0.4.0/24", "10.0.5.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b"]
  }
  db = {
    name              = "db"
    vpc_name          = "main"
    cidr_block        = ["10.0.6.0/24", "10.0.7.0/24"]
    availability_zone = ["us-east-1a", "us-east-1b"]
  }
}
