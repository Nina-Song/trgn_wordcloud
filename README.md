# trgn510_wordcloud
* ### About the app
  * In this assignment, the application creates a webpage with a wordcloud that summarizing a series of a webpages and updates at 23:00 pm per day.
* ### Installation & Usage
  * After creating separate files for the web URLs in forms of `.html`, we need a program html2text that converts these files to text, which can be installed by
  ```
  cd ~/bin
  git clone https://github.com/aaronsw/html2text
  cd html2text
  mv html2text ~/bin/.
  ```
  * To further create a wordcloud image, a program called `wordcloud` needs to be installed in the `~/bin/` directory by
  ```
  cd ~/bin 
  git clone https://github.com/amueller/word_cloud.git
  cd word_cloud
  ```
* ### Dependencies
  * Run the `html2text` program by following commands
  ```
  html2text.py file1.html > my_current.txt
  html2text.py file2.html >> my_current.txt 
  ```
  and test by
  ```
  head my_current.txt
  ```
  * Before using wordcloud, their directions need to be modified by
  ```
  python -m pip install --user wordcloud
  ```
  Then,
  ```
  wordcloud_cli --text my_current.txt --imagefile myimage.png```
  ```
* ### Contact
  * @Nina-Song
  * songjiar@usc.edu
