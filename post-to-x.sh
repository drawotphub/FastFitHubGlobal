#!/data/data/com.termux/files/usr/bin/bash
TWEETS=(
  "FastFitHub India: #1 AI fitness coaching! https://drawotphub.github.io/FastFitHubGlobal/FastFitHubIndia/ #IndiaFitness"
  "Join FastFitHub’s quiz! https://drawotphub.github.io/FastFitHubGlobal/quiz-site/ #FitnessQuiz"
)
RANDOM_TWEET=${TWEETS[$RANDOM % ${#TWEETS[@]}]}
API_KEY="G0j4BJbb3B20dOvT6ApgBk6eB"
API_SECRET="B38CPMFzYFPMDevUK7OxIk8ohbasURAtrXXDAlUuoYqvPN9hoX"
ACCESS_TOKEN="1900777771934117889-AdCNX1tnuhamuHSZSS27nDNHbGo6IU"
ACCESS_TOKEN_SECRET="KsLgRz9Eyko1IHiaSSOKNTdXme5OtxB7cKGv39jD4Ctsl"
TIMESTAMP=$(date +%s)
NONCE=$(openssl rand -hex 16)
# URL-encode parameters
ENCODED_TWEET=$(echo -n "$RANDOM_TWEET" | jq -sRr @uri)
OAUTH_PARAMS="oauth_consumer_key=$API_KEY&oauth_nonce=$NONCE&oauth_signature_method=HMAC-SHA1&oauth_timestamp=$TIMESTAMP&oauth_token=$ACCESS_TOKEN&oauth_version=1.0"
# Sort parameters
SORTED_PARAMS=$(echo -n "$OAUTH_PARAMS" | tr '&' '\n' | sort | tr '\n' '&' | sed 's/&$//')
# Signature base string
SIGNATURE_BASE="POST&https%3A%2F%2Fapi.twitter.com%2F2%2Ftweets&${SORTED_PARAMS}&text%3D${ENCODED_TWEET}"
# Generate signature
SIGNATURE=$(echo -n "$SIGNATURE_BASE" | openssl dgst -sha1 -hmac "$API_SECRET&$ACCESS_TOKEN_SECRET" -binary | base64)
ENCODED_SIGNATURE=$(echo -n "$SIGNATURE" | jq -sRr @uri)
curl -X POST \
  -H "Authorization: OAuth oauth_consumer_key=\"$API_KEY\",oauth_token=\"$ACCESS_TOKEN\",oauth_signature_method=\"HMAC-SHA1\",oauth_timestamp=\"$TIMESTAMP\",oauth_nonce=\"$NONCE\",oauth_version=\"1.0\",oauth_signature=\"$ENCODED_SIGNATURE\"" \
  -H "Content-Type: application/json" \
  -d "{\"text\": \"$RANDOM_TWEET\"}" \
  https://api.twitter.com/2/tweets
