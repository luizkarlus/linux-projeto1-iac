Aqui está o arquivo **README.md** documentando seu script:

---

```md
# Automação de Criação de Diretórios, Grupos, Usuários e Permissões

Este script **automatiza** a criação de diretórios, grupos, usuários e define permissões em um ambiente Linux.

## 📌 Funcionalidades

- Criação de diretórios específicos para diferentes setores.
- Criação de grupos de usuários para cada setor.
- Adição de usuários aos grupos correspondentes.
- Definição de permissões para garantir a segurança adequada dos diretórios.

## 📂 Estrutura de Diretórios Criada

| Diretório | Descrição |
|-----------|------------|
| `/publico` | Acesso livre para todos os usuários |
| `/adm` | Acesso restrito ao grupo **GRP_ADM** |
| `/ven` | Acesso restrito ao grupo **GRP_VEN** |
| `/sec` | Acesso restrito ao grupo **GRP_SEC** |

## 👥 Grupos Criados

- **GRP_ADM** → Para usuários administrativos  
- **GRP_VEN** → Para usuários do setor de vendas  
- **GRP_SEC** → Para usuários do setor de segurança  

## 👤 Usuários Criados

| Usuário      | Grupo      |
|-------------|------------|
| carlos      | GRP_ADM    |
| maria       | GRP_ADM    |
| joao        | GRP_ADM    |
| debora      | GRP_VEN    |
| sebastiana  | GRP_VEN    |
| roberto     | GRP_VEN    |
| josefina    | GRP_SEC    |
| amanda      | GRP_SEC    |
| rogerio     | GRP_SEC    |

## 🔑 Permissões Definidas

- **/publico** → Todos podem acessar (`777`)
- **/adm, /ven, /sec** → Apenas membros dos respectivos grupos têm acesso (`770`)

## 🚀 Como Executar

1. **Dê permissão de execução ao script**:
   ```sh
   chmod +x script.sh
   ```

2. **Execute como superusuário (root)**:
   ```sh
   sudo ./script.sh
   ```

## 🛠️ Requisitos

- Sistema operacional **Linux** (Ubuntu, Debian, CentOS, etc.)
- Permissão de **superusuário (root)**
- Pacote `openssl` instalado para criptografia de senha

## 📜 Código do Script

```sh
#!/bin/bash

echo "Criando diretórios ..."

mkdir -p /publico /adm /ven /sec

echo "Criando grupos de usuários ..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários ..."

useradd carlos -m -s /bin/bash -G GRP_ADM
useradd maria -m -s /bin/bash -G GRP_ADM
useradd joao -m -s /bin/bash -G GRP_ADM

useradd debora -m -s /bin/bash -G GRP_VEN
useradd sebastiana -m -s /bin/bash -G GRP_VEN
useradd roberto -m -s /bin/bash -G GRP_VEN

useradd josefina -m -s /bin/bash -G GRP_SEC
useradd amanda -m -s /bin/bash -G GRP_SEC
useradd rogerio -m -s /bin/bash -G GRP_SEC

# Definindo senhas corretamente
echo "Definindo senhas dos usuários ..."
echo "carlos:Senha123" | chpasswd
echo "maria:Senha123" | chpasswd
echo "joao:Senha123" | chpasswd

echo "debora:Senha123" | chpasswd
echo "sebastiana:Senha123" | chpasswd
echo "roberto:Senha123" | chpasswd

echo "josefina:Senha123" | chpasswd
echo "amanda:Senha123" | chpasswd
echo "rogerio:Senha123" | chpasswd

echo "Especificando permissões dos diretórios ..."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim..."
```

## 📌 Observações

- **Verifique se os grupos e usuários já existem** antes de rodar o script novamente.
- **As senhas dos usuários são definidas como "Senha123"**, por segurança, altere-as após a criação.

---

© 2025 - Criado para automação de gerenciamento de usuários e permissões em sistemas Linux. 🚀
```

---

Esse arquivo **README.md** explica cada parte do script e como usá-lo corretamente. 😊