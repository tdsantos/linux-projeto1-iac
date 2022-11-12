#!/bin/bash

echo "Criando diretórios..."

mkdir adm
mkdir publico
mkdir ven
mkdir sec

echo "Diretórios criados com sucesso..."
echo
echo "Criando grupos de usuários..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

echo "Grupos criados com sucesso!!"
echo
echo "Criando usuários..."

useradd carlos -c "Carlos Santos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e carlos
useradd maria -c "Maria Santos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e maria
useradd joao -c "João Santos" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_ADM
passwd -e joao

useradd debora -c "Debora Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e debora
useradd sebastiana -c "Sebastiana Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e sebastiana
useradd roberto -c "Roberto Silva" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_VEN
passwd -e roberto

useradd josefina -c "Josefina Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e josefina
useradd amanda -c "Amanda Souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e amanda
useradd rogerio -c "Rogerio souza" -s /bin/bash -m -p $(openssl passwd -crypt Senha123) -G GRP_SEC
passwd -e rogerio

echo "Usuários criados... a senha deverá ser alterada no próximo login!!!"
echo 
echo "Especificando as permissões dos diretórios..."
chown root:GRP_ADM adm
chown root: GRP_VEN ven 
chown root: GRP_SEC sec

chmod 770 adm
chmod 770 ven
chmod 770 sec
chmod 777 publico

echo "Script finalizado!!!"





