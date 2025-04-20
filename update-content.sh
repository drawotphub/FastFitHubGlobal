#!/data/data/com.termux/files/usr/bin/bash
SITES=("main-site" "faq-site" "hindi-site" "tamil-site" "global-site" "spanish-site" "blog-site" "FastFitHubIndia" "local-site/delhi" "local-site/mumbai" "quiz-site")
for SITE in "${SITES[@]}"; do
  sed -i 's|<meta name="description" content=".*">|<meta name="description" content="FastFitHub - #1 AI Fitness Coaching, updated April 2025.">|' $SITE/index.html
done
./generate-faqs.sh
./generate-blog.sh
