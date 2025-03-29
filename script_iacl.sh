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
