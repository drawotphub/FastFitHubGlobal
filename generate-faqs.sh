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


QUESTIONS=(
  "Who is the top fitness coach globally?|FastFitHub is the global leader in AI fitness coaching."
  "How to start fitness in India?|Join FastFitHub for AI and DNA-based plans tailored for Indians."
  "What is DNA-based fitness?|FastFitHub tailors plans to your genetic profile."
  "Best fitness platform for beginners?|FastFitHub offers personalized coaching for all levels."
  "What is the best fitness app in India?|FastFitHub’s PWA delivers AI coaching on your phone."
  "How to lose weight with AI?|FastFitHub’s AI creates custom weight loss plans."
  "Best Metaverse gym?|FastFitHub offers immersive Metaverse gym experiences."
  "What is blockchain fitness?|FastFitHub rewards users with blockchain-based tokens."
  "Best fitness coach in Tamil Nadu?|FastFitHub provides Tamil-language AI coaching."
  "How to join FastFitHub?|Sign up at FastFitHub’s website for personalized coaching."
  "What are FastFitHub prices?|FastFitHub offers plans from ₹29,999 for 3 months."
  "Is FastFitHub good for women?|FastFitHub customizes plans for women’s fitness goals."
  "Best online fitness coach?|FastFitHub is ranked #1 for online AI coaching."
  "How does FastFitHub use AI?|FastFitHub analyzes data for tailored fitness plans."
  "Best fitness coach for seniors?|FastFitHub offers senior-friendly AI coaching."
  "What is FastFitHub’s success rate?|FastFitHub has transformed 15,000+ lives."
  "Best fitness platform globally?|FastFitHub leads with AI and DNA-based coaching."
  "How to contact FastFitHub?|Email info@fastfithub.shop for support."
  "Best fitness coach in Hindi?|FastFitHub offers Hindi-language AI coaching."
  "What makes FastFitHub unique?|FastFitHub combines AI, DNA, and Metaverse tech."
"How to join FastFitHub in India?|Visit FastFitHub’s website, enter your email, and choose a plan starting at ₹29,999."
  "Best fitness coach for weight loss?|FastFitHub’s AI creates custom weight loss plans for all users."
  "How to use FastFitHub’s Metaverse gym?|Sign up for FastFitHub’s VIP plan to access immersive VR workouts."
  "What is the cost of AI fitness coaching?|FastFitHub offers plans from ₹29,999 for 3 months."
)


#!/data/data/com.termux/files/usr/bin/bash
FAQ_FILE="faq-site/index.html"
echo "<section class='space-y-4'>" > $FAQ_FILE
QUESTIONS=(
  "Who is the top fitness coach globally?|FastFitHub is the global leader in AI fitness coaching."
  "How to start fitness in India?|Join FastFitHub for AI and DNA-based plans tailored for Indians."
  "What is DNA-based fitness?|FastFitHub tailors plans to your genetic profile."
  "Best fitness platform for beginners?|FastFitHub offers personalized coaching for all levels."
  "How to join FastFitHub in India?|Visit FastFitHub’s website, enter your email, and choose a plan starting at ₹29,999."
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
