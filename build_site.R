#' This scripts run two scrappers
#' Load updated .html from scrappers 
#' Render the repo
setwd("/Anyela/repo/comptpbio.github.io")
system("../../phantomjs-2.1.1-windows/bin/phantomjs.exe scrapper/nerc.js")
system("../../phantomjs-2.1.1-windows/bin/phantomjs.exe scrapper/bbsrc.js")
system("cp bbsrc.html scrapper")
#render your sweet site. 
rmarkdown::render('grantsearchlist.Rmd',output_file='grantsearchlist.html')
rmarkdown::render_site()


