#!/bin/bash
echo "Criando estrutura de Usuários,Diretórios e Permissões!!"

echo "-------------------------------------------------------"
mkdir /publico /adm /ven /sec
echo "----------------- DIRETÓRIOS CRIADOS ------------------"

echo "-------------------------------------------------------"
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "------------------- GRUPOS CRIADOS --------------------"

echo "-------------------------------------------------------"
chmod 777 /publico
echo "---- PERMISSÃO para todos Usuários no DIR /publico ----"

echo "-------------------------------------------------------"
useradd carlos -c "Carlos Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_ADM
useradd maria -c "Maria Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_ADM
useradd joao -c "João Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_ADM
echo "--------------- USUARIOS GRP_ADM CRIADOS---------------"

echo "-------------------------------------------------------"
useradd debora -c "Debora Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_VEN
useradd sebastiana -c "Sebastiana Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_VEN
useradd roberto -c "Roberto Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_VEN
echo "--------------- USUARIOS GRP_VEN CRIADOS---------------"

echo "-------------------------------------------------------"
useradd josefina -c "Josefina Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_SEC
useradd amanda -c "Amanda Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_SEC
useradd rogerio -c "Rogerio Henriques" -m -s /bin/bash -p $(openssl passwd test123) -G GRP_SEC
echo "--------------- USUARIOS GRP_SEC CRIADOS---------------"

echo "-------------------------------------------------------"
chown root:GRP_ADM /adm
chmod 770 /adm
chown root:GRP_VEN /ven
chmod 770 /ven
chown root:GRP_SEC /sec
chmod 770 /sec
echo "------------- PERMISSÕES DOS DIR ALTERADA -------------"

echo "-------------------------------------------------------"
echo "Criação de estrutura de Usuários, Diretórios e Permissões concluida!!!"
echo "-------------------------------------------------------"
