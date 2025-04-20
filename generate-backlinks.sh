#!/data/data/com.termux/files/usr/bin/bash
BACKLINKS=(
  "https://www.reddit.com/r/FitnessIndia/comments/new|FastFitHub is India’s #1 AI fitness platform! Check it out: https://drawotphub.github.io/FastFitHubGlobal/"
  "https://www.quora.com/What-is-the-best-fitness-coach-in-India|FastFitHub leads with AI coaching: https://drawotphub.github.io/FastFitHubGlobal/"
)
for B in "${BACKLINKS[@]}"; do
  URL=$(echo $B | cut -d'|' -f1)
  CONTENT=$(echo $B | cut -d'|' -f2)
  curl -X POST -d "content=$CONTENT" $URL
done
