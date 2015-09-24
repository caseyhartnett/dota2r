# Hello, world!
#
# This is an example function named 'hello'
# which prints 'Hello, world!'.
#
# You can learn more about package authoring with RStudio at:
#
#   http://r-pkgs.had.co.nz/
#
# Some useful keyboard shortcuts for package authoring:
#
#   Build and Reload Package:  'Cmd + Shift + B'
#   Check Package:             'Cmd + Shift + E'
#   Test Package:              'Cmd + Shift + T'

api_details <- list(
  url = "https://api.steampowered.com/",
  key = "64B34AD31E48DE5978C9C4FF7889974C"
  )

get_random_match <- function() {
  request = paste0(api_details$url,
                   "IDOTA2Match_570/GetMatchHistory/V001/?key=",
                   api_details$key,
                   "&matches_requested=1")
  data = fromJSON(getURL(request))
  return(data)
}


