#!/bin/bash

echo "===== INICIANDO CONFIGURAÇÃO DE DIRETÓRIOS, GRUPOS E USUÁRIOS ====="

# Criação de diretórios
echo "Criando diretórios /publico, /adm, /ven e /sec..."
mkdir -p /publico /adm / ven /sec
echo "Diretórios criados com sucesso!"
echo ""

# Criação de grupos
echo "Criando grupos GRP_ADM, GRP_VEN e GRP_SEC..."
groupadd GRP_ADM
groupadd GRP_VEN
groupadd GRP_SEC
echo "Grupos criados com sucesso!"
echo ""

# Criação dos usuários do grupo GRP_ADM
# Tive que remover o parâmetro -crypt pois não criava os usuários e retornava o seguinte erro:
# passwd: Unknown opition: -crypt
echo "Criando usuários do grupo GRP_ADM (carlos, maria e joao)..."
useradd  carlos -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd  maria -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
useradd  joao -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_ADM
echo "Usuários do grupo GRP_ADM criados com sucesso!"

# Criação dos usuários do grupo GRP_VEN
echo "Criando usuários do grupo GRP_VEN (debora, sebastiana e roberto)"
useradd  debora -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd  sebastiana -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
useradd  roberto -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_VEN
echo "Usuários do grupo GRP_VEN criados com sucesso!"

# Criação de usuários do grupo GRP_SEC
echo "Criando usuários do grupo GRP_SEC (josefina, amanda e rogério)"
useradd  josefina -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd  amanda -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
useradd  rogerio -m -s /bin/bash -p $(openssl passwd Senha123) -G GRP_SEC
echo "Usuários do grupo GRP_SEC criados com sucesso!"
echo ""

# Definição das permissões dos diretórios
echo "Configurando permissões dos diretórios..."

# Alterando o proprietário dos diretórios para root
echo "Definindo root como proprietário dos diretórios..."
chown root:root /publico /adm /ven /sec

# Definindo permissões específicas para cada diretório
echo "Configurando permissões específicas para cada diretório..."

# /publico - todos tem acesso total
chmod 777 /publico
echo "Diretório /publico: permissão total para todos os usuários."

# /adm - apenas root e grupo GRP_ADM tem acesso
chown root:GRP_ADM /adm
chmod 770 /adm
echo "Diretório /adm: permissão total para os usuários do grupo GRP_ADM."

# /ven - apenas root e grupo GRP_VEN tem acesso
chown root:GRP_VEN /ven
chmod 770 /ven
echo "Diretório /ven: permissão total para os usuários do grupo GRP_VEN."

# /sec - apenas root e grupo GRP_SEC tem acesso
chown root:GRP_SEC /sec
chmod 770 /sec
echo "Diretório /sec: permissão total para os usuários do grupo GRP_SEC."
echo ""

echo "===== CONFIGURAÇÃO CONCLUÍDA COM SUCESSO! ====="
echo ""

# Exibindo resumo das configurações
echo ""
echo "===== RESUMO DAS CONFIGURAÇÕES ====="
echo ""
echo "Diretórios criados: /publico, /adm, /ven e /sec"
echo ""
echo "Grupos criados: GRP_ADM, GRP_VEN e GRP_SEC"
echo ""
echo "Usuários criados:"
echo "  - GRP_ADM: carlos, maria e joao"
echo "  - GRP_VEN: debora, sebatiana e roberto"
echo "  - GRP_SEC: josefina, amanda e rogerio"
echo ""
echo "Permissões atribuídas:"
echo "  - /publico: acesso total para todos"
echo "  - /adm: acesso apenas para usuários do grupo GRP_ADM"
echo "  - /ven: acesso apenas para usuários do grupo GRP_VEN"
echo "  - /sec: acesso apenas para usuários do grupo GRP_SEC"
echo ""
echo "===================================="
