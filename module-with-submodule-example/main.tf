module "main" {
    source = "./submodule"
}

output "thing" {
  value = "main-module"
}

output "thing2" {
  value = module.main.thing
}
