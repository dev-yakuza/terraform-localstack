# Development

## Python

- Install `pyenv`

```bash
brew install pyenv pyenv-virtualenv
```

- Configure `.zshrc`

```bash
# code ~/.zshrc
...
# pyenv setting
eval "$(pyenv init --path)"
eval "$(pyenv init -)"
# pyenv-virtualenv setting
eval "$(pyenv virtualenv-init -)"
```

- Install `Python`

```bash
pyenv install --list
pyenv install 3.9.9
pyenv versions
```

- Create Python virtual environment

```bash
pyenv virtualenv 3.9.9 venv
pyenv activate venv
```

## LocalStack

- Install `localstack`

```bash
pip install localstack
pip install awscli-local
```

- Start `localstack`

```bash
localstack start -d
localstack status services
```

## Terraform

- terraform: [https://learn.hashicorp.com/tutorials/terraform/install-cli#install-terraform](https://learn.hashicorp.com/tutorials/terraform/install-cli#install-terraform)

```barh
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

## start

```bash
cd terraform
terraform init
terraform plan
terraform apply
```

- Get REST_API_ID

```bash
awslocal apigateway get-rest-apis --query 'items[0].id' --output text
```

- Execute Lambda

```bash
curl http://localhost:4566/restapis/$REST_API_ID/Prod/_user_request_/request_from_query
```
