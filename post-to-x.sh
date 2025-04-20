#!/data/data/com.termux/files/usr/bin/bash
TWEETS=(
  "FastFitHub India: #1 AI fitness coaching! https://drawotphub.github.io/FastFitHubGlobal/FastFitHubIndia/ #IndiaFitness"
  "Join FastFitHub’s quiz! https://drawotphub.github.io/FastFitHubGlobal/quiz-site/ #FitnessQuiz"
  "FastFitHub en Español! https://drawotphub.github.io/FastFitHubGlobal/spanish-site/ #FitnessEspanol"
)
RANDOM_TWEET=${TWEETS[$RANDOM % ${#TWEETS[@]}]}
curl -X POST \
  -H "Authorization: Bearer $AAAAAAAAAAAAAAAAAAAAACn%2B0gEAAAAA60kvImeLbSGUK6a%2F06HujsC2%2B%2BQ%3DOAdmCuraaAp7CfOGj5RXRE5BzVCY2F2q8xsORSzinmp3Wvf4zO" \
  -d "{\"text\": \"$RANDOM_TWEET\"}" \
  https://api.twitter.com/2/tweets
