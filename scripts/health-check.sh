URL=$1

STATUS=$(curl -s -o /dev/null -w "%{http_code}" $URL)

if [ "$STATUS" -ne 200 ]; then
  echo "Health check failed"
  exit 1
fi

echo "Application healthy"
