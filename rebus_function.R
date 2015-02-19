## Title: Rebuses
## Date: 2-18-2015
## File: rebus_function.r
## Author(s): Myfanwy Johnston
## Purpose: To teach myself (and any other fool) ggplot2

rebus <- function(rebusID='barplot') { # rebusID = call a particular rebus, or () for a random one 
  require(cowsay)
  require(ggplot2)
  require(tools)
  
  if (rebusID == 'barplot') {
    
    windows()
    print(bar1)
    
    cat("\n","Think you got it? (y) or (n)", "\n\n")
    reply<-scan(what="character",n=1)
    if  (reply=="y")
      {
      say("At the 11th hour")
      
    } else {
      
      say("Hint: This was the title of a children's book...") 
      cat("\n", "Got it now? (y) or (n)", "\n\n")
      reply <- scan(what = "character", n=1)
      
      if (reply=="y")
      {
        say("At the 11th hour")
      } else {
        
        say("well, don't beat yourself up.  Here's the code: [some code]")
          }
      }
    }
  }

rebus('barplot')
rebus()
    