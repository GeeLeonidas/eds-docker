# Setup Docker para o backend do [eds-app](https://github.com/GeeLeonidas/eds-app)
1. Clone o repositório com `git clone https://github.com/GeeLeonidas/eds-docker.git`
2. Copie `.env.sample` com o nome de `.env` e edite-o, inserindo os devidos nomes e senhas
3. Execute o comando `docker compose up`
4. Pronto!

Obs.: para acessar o MariaDB diretamente é necessário utilizar o comando `docker exec`
```bash
docker exec -it eds-docker-database-1 \
  /usr/bin/mariadb --user=<insert db user> \
  --password=<insert db password> <insert db name>
```
