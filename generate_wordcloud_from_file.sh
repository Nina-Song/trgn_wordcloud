#!/usr/bin/bash

counter=1
while read line
    do
        wget -O ~/assignments/trgn_wordcloud/current_pages/file$counter.html $line
        ((counter++))
    done < web.txt

html2text.py ~/assignments/trgn_wordcloud/current_pages/file1.html > webimage.txt
html2text.py ~/assignments/trgn_wordcloud/current_pages/file2.html >> webimage.txt
wordcloud_cli --text webimage.txt --imagefile ~/public_html/myimage.png --mask ~/assignments/trgn_wordcloud/TRGN.png --contour_width 1 --min_word_length 6 --background "white" 
cp ~/public_html/myimage.png ~/assignments/trgn_wordcloud

echo "Successfully run for $USER";
