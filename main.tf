provider "aws" {
    region = "ap-south-1"
  
}

module "webec2" {
    source = "./Web Server Module"
    webec2name = "Web Server EC2"
  
}

module "dbec2" {
    source = "./DB Server Module"
    dbec2name = "DB Server EC2"
  
}

output "dbec2output_publicIP" {
    value = module.dbec2.dbec2_publicIP
  
}

output "webec2_publicIP" {
 value = module.webec2.webec2_publicIP

}