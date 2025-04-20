#!/data/data/com.termux/files/usr/bin/bash
curl -s "https://www.google.com/search?q=site:drawotphub.github.io/FastFitHubGlobal" > indexing.log
grep "FastFitHub" indexing.log && echo "Site indexed!" || echo "Not indexed yet."
