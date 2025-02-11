#!/bin/bash

echo "criando usuários..."

mkdir /publico /adm /ven /sec

groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC

chown root:GRP_ADM /adm
chown root:GRP_VEN /ven
chown root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec

useradd carlos -G GRP_ADM -c "Carlos" -s /bin/bash && echo 'carlos:senha123' | chpasswd
useradd maria -G GRP_ADM -c "Maria" -s /bin/bash && echo 'maria:senha123' | chpasswd
useradd joao -G GRP_ADM -c "João" -s /bin/bash && echo 'joao:senha123' | chpasswd

useradd debora -G GRP_VEN -c "Débora" -s /bin/bash && echo 'debora:senha123' | chpasswd
useradd sebastiana -G GRP_VEN -c "Sebastiana" -s /bin/bash && echo 'sebastiana:senha123' | chpasswd
useradd roberto -G GRP_VEN -c "Roberto" -s /bin/bash && echo 'roberto:senha123' | chpasswd

useradd josefina -G GRP_SEC -c "Josefina" -s /bin/bash && echo 'josefina:senha123' | chpasswd
useradd amanda -G GRP_SEC -c "Amanda" -s /bin/bash && echo 'amanda:senha123' | chpasswd
useradd rogerio -G GRP_SEC -c "Rogerio" -s /bin/bash && echo 'rogerio:senha123' | chpasswd

echo "processo finalizado com sucesso!"
