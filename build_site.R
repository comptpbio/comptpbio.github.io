#Set our working directory. 
#This helps avoid confusion if our working directory is 
#not our site because of other projects we were 
#working on at the time. 
setwd("/Anyela/repo/comptpbio.github.io")
system("../../../phantomjs-2.1.1-windows/bin/phantomjs.exe nerc.js")
system("../../../phantomjs-2.1.1-windows/bin/phantomjs.exe bbsrc.js")

#render your sweet site. 
rmarkdown::render('grantsearchlist.Rmd',output_file='grantsearchlist.html')
rmarkdown::render_site()


