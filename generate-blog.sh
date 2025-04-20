#!/data/data/com.termux/files/usr/bin/bash
BLOG_FILE="blog-site/index.html"
POSTS=(
  "Why AI Fitness is the Future|FastFitHub’s AI analyzes your data for personalized fitness plans."
  "Top 5 Fitness Tips for India|FastFitHub shares expert tips for Indian fitness enthusiasts."
)
echo "<section class='space-y-8'>" > $BLOG_FILE
for P in "${POSTS[@]}"; do
  TITLE=$(echo $P | cut -d'|' -f1)
  CONTENT=$(echo $P | cut -d'|' -f2)
  echo "<div class='bg-white/10 p-8'><h2 class='text-2xl font-bold'>$TITLE</h2><p>$CONTENT</p></div>" >> $BLOG_FILE
done
echo "</section>" >> $BLOG_FILE
