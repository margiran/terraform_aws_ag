# Provision an AWS Auto scaling Group & LoadBalancer 

### using Terraform, AWS 

![datacenter image](https://github.com/margiran/terraform_aws_alb_nginx/blob/master/diagram/auto_scale_and_load_balancing_in_aws_cloud.png)

## Pre-requisites

* You must have [Terraform](https://www.terraform.io/downloads) installed on your computer. 
* You must have an [Amazon Web Services (AWS) account](http://aws.amazon.com/).

## Quick start

### Set the AWS environment variables:

Configure your [AWS access 
keys](http://docs.aws.amazon.com/general/latest/gr/aws-sec-cred-types.html#access-keys-and-secret-access-keys) as 
environment variables:
```
export AWS_ACCESS_KEY_ID=(your access key id)
export AWS_SECRET_ACCESS_KEY=(your secret access key)
```

### Clone the repository:

```
git clone git@github.com:margiran/terraform_aws_asg.git
cd terraform_aws_asg
```

### Build infrastructure using Terraform:

```
terraform init
terraform apply
```

### Access the server

You should be able to connect to the link_http with your web browser and see the nginx default webpage

```
terraform output link_http
```

### Clean up when you're done:

```
terraform destroy
```