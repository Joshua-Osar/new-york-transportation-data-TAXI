docker run -it \
    -e PGADMIN_DEFAULT_EMAIL="admin@admin.com" \
    -e PGADMIN_DEFAULT_PASSWORD="root" \
    -p 5431:80 \
    --network=pgg-network \
    --name pgadmin \
    dpage/pgadmin4

docker run -it \
  -e  POSTGRES_USER="rope" \
  -e  POSTGRES_PASSWORD="rope" \
  -e  POSTGRES_DB="ny__taxi" \
  -v  $(pwd)/docker_reload:/var/lib/postgresql/data \
  -p  8080:5432 \
  --network=pgg-network \
  --name postgres-database \
  postgres:13



docker run -it \
  -p 3000:3000 \
  -e "MB_DB_TYPE=postgres" \
  -e "MB_DB_DBNAME=ny__taxi" \
  -e "MB_DB_PORT=5432" \
  -e "MB_DB_USER=rope" \
  -e "MB_DB_PASS=rope" \
  -e "MB_DB_HOST=postgres-database" \
  --name metabase \
  metabase/metabase
