REQUIRED_SECRETS=(
  "ACR_LOGIN_SERVER"
  "ACR_USERNAME"
  "ACR_PASSWORD"
)

for SECRET in "${REQUIRED_SECRETS[@]}"; do
  if [ -z "${!SECRET}" ]; then
    echo "Missing secret: $SECRET"
    exit 1
  fi
done

echo "All required secrets are present."
