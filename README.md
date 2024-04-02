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

### TIPS:

> lembrando que a maior parte dos comandos acima devem ser rodados na pasta em que há o seu `main.tf`

> para um gerenciamento de versões do `Terraform`, utilizamos o [tfenv](https://github.com/tfutils/tfenv)

##

</details>
