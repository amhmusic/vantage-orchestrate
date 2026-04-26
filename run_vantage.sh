# Create network (only need to do this once)
docker network create vantage-network

# Run Postgres
docker run -d \
  --name vantage-db \
  --network vantage-network \
  -e POSTGRES_PASSWORD=postgres \
  -e POSTGRES_DB=vantage-db \
  -p 5432:5432 \
  vantage-db

# Run Hasura
docker run -d \
  --name vantage-api \
  --network vantage-network \
  -p 5000:5000 \
  --env-file .env \
  vantage-api