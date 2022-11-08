!#/bin/bash

echo "Script de crição de usuário"

mkdir /publico /adm /ven /sec 

groupadd GRP_ADM

groupadd GRP_VEN

groupadd GRP_SEC

useradd carlos -m -c "Carlos" -p $(openssl passwd -crypt Senha123) -g GRP_ADM -s /bin/bash

useradd maria -m -c "Maria" -p $(openssl passwd -crypt Senha123) -g GRP_ADM -s /bin/bash

useradd maria -m -c "Maria" -p $(openssl passwd -crypt Senha123) -g GRP_ADM -s /bin/bash
 
useradd joao -m -c "João" -p $(openssl passwd -crypt Senha123) -g GRP_ADM -s /bin/bash

useradd debora -m -c "Debora" -p $(openssl passwd -crypt Senha123) -g GRP_VEN -s /bin/bash

useradd sebastiana -m -c "Sebastiana" -p $(openssl passwd -crypt Senha123) -g GRP_VEN -s /bin/bash

useradd roberto -m -c "Roberto" -p $(openssl passwd -crypt Senha123) -g GRP_VEN -s /bin/bash

useradd josefina -m -c "Josefina" -p $(openssl passwd -crypt Senha123) -g GRP_SEC -s /bin/bash
 
useradd amanda -m -c "Amanda" -p $(openssl passwd -crypt Senha123) -g GRP_SEC -s /bin/bash

useradd rogerio -m -c "Rogerio" -p $(openssl passwd -crypt Senha123) -g GRP_SEC -s /bin/bash


chown -cv root:GRP_ADM /adm
chown -cv root:GRP_VEN /ven
chown -cv root:GRP_SEC /sec

chmod 777 /publico
chmod 770 /adm
chmod 770 /ven
chmod 770 /sec
