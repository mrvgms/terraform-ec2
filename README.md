###  Description

* This terraform script launches 3 ec2 instances. Instance types are t2.small and tags the instances with `env=task`. <br/>
* In addition, it assigns "ssh" to each instance where access is allowed to all ip's on port 2222.

### Pre-requisites

* Terraform version : v0.14.3
* AWS account

### Directions

##### In order to change `ami, instance_count, instance_type, aws_region, security_groups, access_key, secret_key, and/or tags` : 

* Go under `ec2/ec2.tfvars` file and change those values to desired values. <br/>
* Please note that aws `access_key` and `secret_key` of the user is required to run the script. 

##### In order to change the ssh port (currently it's port 2222):

* Go to the script located under `ec2/port.sh` and change "2222" to desired port number. <br/>
* Additionally, go to `ec2/sec_group.tf` file and change "2222" under ingress to desired port number. <br/>

Save any changes. 

### Commands to run:

##### After any desired changes, explained above, run the code with following commands: 

* Clone the repository and go into the `ec2` folder. (Make sure to enter aws access key and secret key under `ec2.tfvars`)
* `Terraform init` <br/>
* `Terraform apply -var-file ec2.tfvars`

The code currently creates 5 resources and outputs the instance IDs of each created instance and their AMI IDs. <br/>
If desired, more output values can be added to `output.tf` file. 

##### Finally, to login to any created instance, use the command below:
* `ssh ec2-user@<instance_IP_address> -p 2222`

* Please note that the current code uses Amazon Linux AMI, if AMI ID is changed per user preference, then use the corresponding user name instead of `ec2-user`  <br/>
  examples:  <br/>
`ssh centos@<instance_IP_address> -p 2222`  <br/>
`ssh ubuntu@<instance_IP_address> -p 2222`
