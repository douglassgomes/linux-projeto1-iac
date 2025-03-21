# GNU/Linux - Projeto de Infraestrutura como Código - IaC

Repositório para arquivos de script do primeiro projeto do curso de GNU/Linux da DIO.

## Escopo do Projeto

Criação de Script Bash para automatizar o provisionamento da infraestrutura (criação de diretórios, grupos e usuários), com as seguintes características:
- O dono de todos os diretórios criados será o usuário root;
- Todos os usuários terão permissão total dentro do diretório publico;
- Os usuários de cada grupo terão permissão total dentro de seu respectivo diretório; e
- Os usuários não poderão ter permissão de leitura, escrita e execução em diretórios de departamentos que eles não pertencem.

| Diretórios   | Grupos       | Usuários                           |
| :---------- | :--------- | :---------------------------------- |
| `/publico` | `todos` | `todos` |
| `/adm` | `GRP_ADM` | `carlos, maria, joao` |
| `/ven` | `GRP_VEN` | `debora, sebastiana, roberto` |
| `/sec` | `GRP_SEC` | `josefina, amanda, rogerio` |


## Tecnologias e Ferramentas Utilizadas

![Debian GNU/Linux](https://img.shields.io/badge/Debian-35495E?style=for-the-badge&logo=debian&logoColor=E44C30)
![/bin/bash](https://img.shields.io/badge/bash-5495E?style=for-the-badge&logo=shell&logoColor=fff)
![Windows](https://img.shields.io/badge/Windows-000?style=for-the-badge)
[![Git](https://img.shields.io/badge/GIT-E44C30?style=for-the-badge&logo=git&logoColor=white)](https://github.com/douglassgomes)

## Referências

- [Digital Inovation One](https://web.dio.me/)
- [O editor de texto nano](https://terminalroot.com.br/2015/10/o-editor-de-texto-nano.html)

[![GPLv3 License](https://img.shields.io/badge/License-GPL%20v3-yellow.svg)](https://opensource.org/licenses/)
