# Ethos Repository

Terraform code for deploying aws load balancer with ec2 instances using personal AWS Free Tier Account
Learning Terraform basics and GitHub 

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for deployment and testing purposes. See deployment for notes on how to deploy the project on your system.

### Prerequisites (User's Configuration and Environment)

- AWS Account with Free Tier 
- Windows Desktop with Linux Subsytem as User's Local Machine
- AWS CLI
- Git Account and Environment 
- Terraform

HashiCorp Terraform enables you to safely and predictably create, change, and improve infrastructure. It is an open source tool that codifies APIs into declarative configuration files that can be shared amongst team members, treated as code, edited, reviewed, and versioned.



```
Create AWS Free Tier account
Configure initial root security and IAM password rules 
Create admin and terraform user 
Download and install Linux subsystem on Windows 10 Desktop
Install AWS CLI, Git, Terraform
Create Git account and local repo
Created initial VPC as early environment configuration 
Created S3 for terraform infrastructure metadata (repeatable deployment to Blue and Green)
Prepare terraform codes
Commit often and use Terraform plan
```
    

### Installing

- Created new AWS Free Tier account to be used for this Terraform and Git environment 
  - <img src="https://github.com/jester-vergara/ethos/blob/master/2019-08-18_22-37-42.png" width="240">
- Windows Desktop 
  - https://docs.microsoft.com/en-us/windows/wsl/install-win10 - Install Linux Subsystem 
  - Ubuntu or Kali (optional)
    - <img src="https://github.com/jester-vergara/ethos/blob/master/2019-08-18_12-50-19.png" width="240">
- AWS CLI - https://docs.aws.amazon.com/cli/latest/userguide/install-linux.html
- Terraform - https://askubuntu.com/questions/983351/how-to-install-terraform-in-ubuntu
- Git - https://www.liquidweb.com/kb/install-git-ubuntu-16-04-lts/
   - <img src="https://github.com/jester-vergara/ethos/blob/master/2019-08-18_22-25-41.png" width="240">
   
## Running the tests...
```
Explain how to run the automated tests for this system
```
### Break down into end to end tests

-Check API for continuous integration
-Configure CI tests such as code linters (which check style formatting), security checks, code coverage, and other checks against new code commits in a repository

### And coding style tests...

Explain what these tests test and why

```
Give an example
```

## Deployment

Blue-green deployment is a technique that reduces downtime and risk by running two identical production environments called Blue and Green. At any time, only one of the environments is live, with the live environment serving all production traffic. 
```
https://docs.cloudfoundry.org/devguide/deploy-apps/blue-green.html
```
This is considered with respect to AWS cost efficiency for seamless deployment on live productions systems and ability to maximize recovery process if there will be major issues when switching environments. 


## Built With

* [Terraform]
* [AWS CLI]
* [Ubuntu]

## Contributing

For further questions or concerns - send me an email <-jester.vergara@gmail.com->
Feel free in contributing or enhancing any design

## Versioning

Standard - Default

## Authors

* **Jester Vergara** - *Project Ethos* 

## License

Public 

## Acknowledgments

* Hat tip to anyone whose code was used
* Inspiration and Many Thanks!
* https://gist.githubusercontent.com/PurpleBooth/109311bb0361f32d87a2/raw/8254b53ab8dcb18afc64287aaddd9e5b6059f880/README-Template.md
* https://github.com/topics/timeboxing
* https://www.terraform.io/docs/providers/aws/#environment-variables
* https://linoxide.com/devops/install-terraform-provision-aws-ec2-instance/
* https://github.com/santiagopoli/terraform-examples
* https://docs.cloudfoundry.org/devguide/deploy-apps/blue-green.html
* https://gist.github.com/neilstuartcraig/0ccefcf0887f29b7f240
