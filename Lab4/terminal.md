chmod +x ./debug-prod.sh
chmod +x ./debug-dev.sh
# Prod environment
./debug-prod.sh plan

./debug-prod.sh apply

# Dev environment
./debug-dev.sh plan
./debug-dev.sh apply
