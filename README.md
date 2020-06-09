Supports management of all default networking resources in an AWS account. Use this module to lock down those
resource by removing ingress/egress rules for the default network ACL and the ingress/egress rules for the default
security group rules. These resources are special so please read the accompanying documentation below.

Resources supported:

- [aws_default_network_acl](https://www.terraform.io/docs/providers/aws/r/default_network_acl.html)
- [aws_default_route_table](https://www.terraform.io/docs/providers/aws/r/default_route_table.html)
- [aws_default_security_group](https://www.terraform.io/docs/providers/aws/r/default_security_group.html)
- [aws_default_subnet](https://www.terraform.io/docs/providers/aws/r/default_subnet.html)
- [aws_default_vpc](https://www.terraform.io/docs/providers/aws/r/default_vpc.html)
- [aws_default_vpc_dhcp_options](https://www.terraform.io/docs/providers/aws/r/default_vpc_dhcp_options.html)

## Terraform Versions

Terraform 0.12. Pin module version to ~> 1.0.0 . Submit pull-requests to master branch.

Terraform 0.11 was never supported.

## Usage

```hcl
# Allows all services to log to bucket
module "default_vpc" {
  source = "trussworks/default-vpc/aws"
  region = "us-west-2"
}
```

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

| Name | Version |
|------|---------|
| terraform | >= 0.12 |

## Providers

| Name | Version |
|------|---------|
| aws | n/a |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| region | AWS Region | `string` | `"us-west-2"` | no |

## Outputs

| Name | Description |
|------|-------------|
| network\_acl | The Default Network ACL |
| route\_table | The Default Route Table |
| security\_group | The Default Security Group |
| subnets | The Default Subnets |
| vpc | The Default VPC |
| vpc\_dhcp\_options | The Default VPC DHCP Options Set |

<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->

## Upgrade Paths

### Upgrading from 1.0.0 to TBD

TBD - No upgrade paths yet

## Developer Setup

Install dependencies (macOS)

```shell
brew install pre-commit terraform terraform-docs
```

### Testing

```shell
make test
```