ENV=$1

echo "Deploying to environment: $ENV"

if [ "$ENV" == "production" ]; then
  echo "Deploying production image..."
else
  echo "Deploying staging image..."
fi

echo "Deployment completed successfully."
