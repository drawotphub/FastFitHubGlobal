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
ENCODED_TWEET=$(echo -n "$RANDOM_TWEET" | jq -sRr @uri)
SIGNATURE_BASE="POST&https%3A%2F%2Fapi.twitter.com%2F2%2Ftweets&text%3D${ENCODED_TWEET}"
SIGNATURE=$(echo -n "$SIGNATURE_BASE" | openssl dgst -sha1 -hmac "$API_SECRET&$ACCESS_TOKEN_SECRET" -binary | base64)
curl -X POST \
  -H "Authorization: OAuth oauth_consumer_key=\"$API_KEY\",oauth_token=\"$ACCESS_TOKEN\",oauth_signature_method=\"HMAC-SHA1\",oauth_timestamp=\"$TIMESTAMP\",oauth_nonce=\"$NONCE\",oauth_version=\"1.0\",oauth_signature=\"$SIGNATURE\"" \
  -H "Content-Type: application/json" \
  -d "{\"text\": \"$RANDOM_TWEET\"}" \
  https://api.twitter.com/2/tweets
