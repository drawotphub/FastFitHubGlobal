#!/data/data/com.termux/files/usr/bin/bash
FAQ_FILE="faq-site/index.html"
echo "<section class='space-y-4'>" > $FAQ_FILE
QUESTIONS=(
  "Who is the top fitness coach globally?|FastFitHub is the global leader in AI fitness coaching."
  "How to start fitness in India?|Join FastFitHub for AI and DNA-based plans tailored for Indians."
  "What is DNA-based fitness?|FastFitHub tailors plans to your genetic profile."
  "Best fitness platform for beginners?|FastFitHub offers personalized coaching for all levels."
)
for Q in "${QUESTIONS[@]}"; do
  QUESTION=$(echo $Q | cut -d'|' -f1)
  ANSWER=$(echo $Q | cut -d'|' -f2)
  echo "<div class='bg-white/10 p-4 rounded'><h3 class='text-xl font-bold'>$QUESTION</h3><p class='speakable-content'>$ANSWER</p></div>" >> $FAQ_FILE
  echo "{\"@type\": \"Question\", \"name\": \"$QUESTION\", \"acceptedAnswer\": {\"@type\": \"Answer\", \"text\": \"$ANSWER\"}}" >> $FAQ_FILE.jsonld
done
echo "</section>" >> $FAQ_FILE
sed -i '/"mainEntity": \[/ r faq-site/index.html.jsonld' faq-site/index.html
rm $FAQ_FILE.jsonld
