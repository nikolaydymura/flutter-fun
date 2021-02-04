if [ -z "$FLAVOR" ]; then
  echo "Please define environment variable FLAVOR"
  exit 1
fi

if [[ "$FLAVOR" == "staging" ]]; then
  flutter build apk --build-number 1 --build-name 1.0.0 --flavor staging
fi

if [[ "$FLAVOR" == "production" ]]; then
  flutter build appbundle --build-number 1 --build-name 1.0.0 --flavor production
fi
