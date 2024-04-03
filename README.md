# 🌎`Terraform studies` 

<details>
  <summary> Configurações Iniciais:</summary>

1. Para que o terraform possa se conectar com a aws, vamos utilizar a `aws cli` e conectarmos através do comando `aws configure`. Passando os dados de acesso criados [aqui](https://us-east-1.console.aws.amazon.com/iam/home?region=us-east-1#/users).

##

</details>

## 1. Primeiro Script

<details>
  <summary> Click me </summary>

### Os comandos aprendidos foram:

```bash
terraform init
```

> Esse comando é utilizado para **INICIARMOS** o 'back-end' do nosso terraform.

#

```bash
terraform plan
```

> Esse comando irá planejar o que o se código irá realizar.

#

```bash
terraform apply
```

> Esse comando irá **executar** o seu código.

##

</details>

## 2. Alterando e Destruindo

<details>
  <summary> Click me </summary>

### Os comandos utilizados são:

```bash
terraform plan
```

> Esse comando irá planejar o que o se código irá realizar (adição ou edições).

#

```bash
terraform destroy
```

> Esse comando irá destruir o serviço que foi criado.

##

</details>

## 3. Variáveis

<details>
  <summary> Click me </summary>

### Como utilizar variáveis dentro do `terraform`:

1. Criamos um arquivo (`variables.tf`) para definirmos as nossas variáveis e seus tipos:

```hcl
variable "aws_region" {
  type = string
  description = ""
  default = "us-east-1"
}
```

> type => `string, number, bool`

> description => `this specifies the input variable's documentation.`

> default => `a default value which then makes the variable optional.`

2. Para usar as variáveis criadas, basta utilizar a palavra reservada `var` e acessar ela como um objeto.

```hcl
provider "aws" {
  region  = var.aws_region
  profile = var.aws_profile
}
```

> As variáveis que não possuírem um valor `default` serão preenchidas no momento de realizar o `plan`

3. Nós também podemos utilizar um arquivo chamado `terraform.tfvars` para definirmos os **valores** das nossas variáveis

```hcl
# terraform.tfvars
aws_region = "us-east-1"
aws_profile = "default"
instance_type = "t2.micro"
```

##

</details>

##

### TIPS:

> lembrando que a maior parte dos comandos acima devem ser rodados na pasta em que há o seu `main.tf`

> para um gerenciamento de versões do `Terraform`, utilizamos o [tfenv](https://github.com/tfutils/tfenv)

##
