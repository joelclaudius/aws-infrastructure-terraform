# Terraform EC2 Instance Module

## Introduction

This Terraform project module is designed to create an Amazon EC2 instance within a Virtual Private Cloud (VPC) with customizable specifications. It includes the ability to generate and download SSH key pairs, define security group rules, and provides output information about the created instance and VPC resources. Users can easily configure the instance details using a `specifications.tfvars` file or use default values set in `variables.tf`.

## Contents

1. `version.tf`: Specifies the Terraform version and cloud provider to be used.
2. `variables.tf`: Defines all the variables used by Terraform, including default values.
3. `vpc.tf`: Creates the VPC, subnets, and sets CIDR block addresses.
4. `security-group.tf`: Configures inbound and outbound rules for the security group.
5. `keypair_gen.tf`: Generates and downloads SSH key pairs to your local machine.
6. `ec2.tf`: Contains the Terraform code to create the EC2 instance.
7. `output.tf`: Provides essential information about the instance, including its ID, DNS name, public IP, and VPC ID.
8. `specifications.tfvars`: Allows users to specify their desired instance details.

## Usage

1. Ensure you have Terraform installed and AWS credentials configured.

2. Customize the `specifications.tfvars` file to define your EC2 instance specifications.

3. Run `terraform init` to initialize the Terraform environment.

4. Run `terraform apply -var-file=specifications.tfvars` to create the EC2 instance and associated resources.

## Module Structure

The module is organized as follows:

- **`version.tf`**:
  - Specifies the Terraform version.
  - Defines the AWS provider configuration.

- **`variables.tf`**:
  - Stores variables used in the module, including instance type, AMI ID, key pair name, VPC information, and security group rules.
  - Default values are provided for each variable.

- **`vpc.tf`**:
  - Creates the Virtual Private Cloud (VPC) with defined CIDR blocks.
  - Sets up public and private subnets within the VPC.

- **`security-group.tf`**:
  - Configures security group rules for the EC2 instance.
  - Allows customization of inbound and outbound rules.

- **`keypair_gen.tf`**:
  - Generates and downloads SSH key pairs to your local machine.
  - The key pair name is determined by the provided variable.

- **`ec2.tf`**:
  - Contains the Terraform code to create the EC2 instance.
  - References the VPC, security group, key pair, and other defined variables.

- **`output.tf`**:
  - Defines output variables to provide information about the created EC2 instance, such as its ID, DNS name, public IP, and VPC ID.

- **`specifications.tfvars`**:
  - Allows users to specify their desired instance details.
  - Overrides variables defined in `variables.tf`.

## Contributions

Contributions and improvements to this Terraform module are welcome. Please create a pull request or open an issue to discuss any proposed changes.

## License

This Terraform module is available under the MIT License.
