output instance_ids {
  description = "IDs of EC2 instances"
  value       = aws_instance.task3.*.id
}


output instance_amis {
  description = "IDs of EC2 instances's AMIS"
  value       =    aws_instance.task3.*.ami
}