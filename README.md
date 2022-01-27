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
```

- Start `localstack`

```bash
localstack start -d
localstack status services
```

## Terraform

- https://learn.hashicorp.com/tutorials/terraform/install-cli#install-terraform

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
