# DDOS for UKRAINE

### For usage need

- **AWS account**
- **Terraform**

### Usage:

- Create in **IAM AWS** access and secret key with **EC2** access
- Install Terraform on your machine (https://learn.hashicorp.com/tutorials/terraform/install-cli)
- Clone repo
    - ```git clone https://github.com/nlemeshko/forukraine```
    - ```cd forukraine```
- Create file **keys.tfvars** and put some variables

- ```servers = 1``` - **How many servers need to create**
- ```access = ""``` - **Your access_key**
- ```secret = ""``` - **Your secret key**
- ```address = "194.67.14.186:53/UDP"``` - **address which need to DDoS**

- **run commands in terminal**:
    - ```terraform init```
    - ```terraform apply -var-file keys.tfvars -auto-approve```

## License
***Nicky Lemeshko*** [©mdsn](https://mdsn.tk) **2022**