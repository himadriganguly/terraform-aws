# Terraform Code For **AWS EC2 Creation**

This **Terraform code** will create **AWS EC2 Instance**, **AWS Keypair** and **AWS Security Group**. It will attach the **AWS Keypair** and **AWS Security Group** with the **EC2 Instance**. The **AWS Security Group** allow all outbound traffic to any IP Address through any port using any protocol and allow inbound traffic from any IP Address to only **SSH** port **22** over the **TCP Protocol**.

## Usage
~~~~
# This will display in details what will be going to happen on running terraform apply
terraform plan -out=ec2-instance-creation

# This will create the AWS Infrastructure
terraform apply

# This will delete the already created infrastructure using apply
terraform destroy
~~~~
**Note:** Run the above command in **Terminal** from the path where the **Terraform code** is present. On running it will ask for **3** variables **access_key**, **secret_key**, **path_to_public_key**. 

These variables can also be passed in the following way:

~~~~
# This will display in details what will be going to happen on running terraform apply
terraform plan \
-var 'access_key=[YOUR_ACCESS_KEY]' \
-var 'secret_key=[YOUR_SECRET_KEY]' \
-var 'path_to_public_key=[YOUR_PUBLIC_KEY_PATH]' \
-out=ec2-instance-creation

# This will create the AWS Infrastructure
terraform apply \
-var 'access_key=[YOUR_ACCESS_KEY]' \
-var 'secret_key=[YOUR_SECRET_KEY]' \
-var 'path_to_public_key=[YOUR_PUBLIC_KEY_PATH]'

# This will delete the already created infrastructure using apply
terraform destroy \
-var 'access_key=[YOUR_ACCESS_KEY]' \
-var 'secret_key=[YOUR_SECRET_KEY]' \
-var 'path_to_public_key=[YOUR_PUBLIC_KEY_PATH]'
~~~~

Enjoy :smile:.