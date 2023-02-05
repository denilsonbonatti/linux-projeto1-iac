
echo "Criando grupos de usuários..."

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Criando usuários..."

useradd carlos -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd maria -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM
useradd joao -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_ADM

useradd debora -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd sebastiana -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN
useradd roberto -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_VEN

useradd josefina -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd amanda -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC
useradd rogerio -m -s /bin/bash -p $(openssl passwd -crypt Senha123) -G GRP_SEC

echo "Especificando permissões dos diretórios...."

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
chmod 777 /publico

echo "Fim....."














#!/bin/bash

# Criando os diretórios 1
mkdir /publico1
mkdir /adm1
mkdir /ven1
mkdir /sec1

# Criando os grupos 1
groupadd GPR_ADM1
groupadd GPR_VEN1
groupadd GPR_SEC1

# Criando os usuários para o grupo GPR_ADM 1
useradd -m -d /home/carlos -g GPR_ADM carlos1
useradd -m -d /home/maria -g GPR_ADM maria1
useradd -m -d /home/joao -g GPR_ADM joao1

# Criando os usuários para o grupo GPR_VEN1
useradd -m -d /home/debora -g GPR_VEN debora1
useradd -m -d /home/sebastiana -g GPR_VEN sebastiana1
useradd -m -d /home/roberto -g GPR_VEN roberto1

# Criando os usuários para o grupo GPR_SEC 1
useradd -m -d /home/josefina -g GPR_SEC josefina1
useradd -m -d /home/amanda -g GPR_SEC amanda1
useradd -m -d /home/rogerio -g GPR_SEC rogerio1

# Configurando as permissões dos diretórios 1
chown -R root:root /publico1
chmod 775 /publico1

chown -R root:GPR_ADM /adm1
chmod 770 /adm1

chown -R root:GPR_VEN /ven1
chmod 770 /ven1

chown -R root:GPR_SEC /sec1
chmod 770 /sec1

