output "instances_name" {
  description = "Name for compute instances"
  value       = "${module.vm_instance.name}"
}
