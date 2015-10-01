ap-northeast-1 Asia Pacific (Tokyo)
ap-southeast-1 Asia Pacific (Singapore)
ap-southeast-2 Asia Pacific (Sydney)
eu-central-1 EU (Frankfurt)
eu-west-1 EU (Ireland)
sa-east-1 South America (Sao Paulo)
us-east-1 US East (N. Virginia)
us-west-1 US West (N. California)
us-west-2 US West (Oregon)


    "type": "amazon-ebs",
    "access_key": "{{user `aws_access_key`}}",
    "secret_key": "{{user `aws_secret_key`}}",
    "region": "us-east-1",
    "source_ami": "ami-de0d9eb7",
    "instance_type": "m3.medium",
    "ssh_username": "ubuntu",
    "ami_name": "disthttp-test {{timestamp}}"
  },{
    "type": "amazon-ebs",
    "access_key": "{{user `aws_access_key`}}",
    "secret_key": "{{user `aws_secret_key`}}",
    "region": "eu-west-1",
    "source_ami": "ami-5da23a2a",
    "instance_type": "t1.micro",
    "ssh_username": "ubuntu",
    "ami_name": "disthttp-test {{timestamp}}"
  },{
    "type": "amazon-ebs",
    "access_key": "{{user `aws_access_key`}}",
    "secret_key": "{{user `aws_secret_key`}}",
    "region": "eu-central-1",
    "source_ami": "ami-b6cff2ab",
    "instance_type": "t1.micro",
    "ssh_username": "ubuntu",
    "ami_name": "disthttp-test {{timestamp}}"
   },{
