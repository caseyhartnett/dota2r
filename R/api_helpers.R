
#' Saves the api key
#'
#' @param key steam api key
#' @export
set_api_key <- function(key) {
  env_string = paste0("STEAM_KEY=", key)
  fileConn <- file(".Renviron")
  writeLines(env_string, fileConn)
  close(fileConn)
}

#' Return the stored api key
#'
#' @return Steam api key
#' @export
#'
#' @examples
#' get_api_key()
get_api_key <- function(){
  key = Sys.getenv("STEAM_KEY")
  return(key)
}

#' Returns details for api config
#'
#' @return list with url and key
#' @export
#'
#' @examples
#' get_api_details()
get_api_details <- function(){
  api_details <- list(
    url = "https://api.steampowered.com/",
    key = get_api_key())
}

#' Convert options list into string for url request
#'
#' @param options list of options for query
#'
#' @return a string to be used in url request
#' @export
#'
#' @examples
#' options = list("hero_id" = 1)
#' create_options_printout(options)
create_options_printout <- function(options){
  options_printout = "&"
  for (i in 1:length(options)) {
    if (paste(options[i]) == "NULL") {next}
    options_printout = paste0(
      options_printout,
      paste0(names(options[i]), "=", options[i]),
      sep = "&")
  }
  # remove last & added by sep
  options_printout <- substr(options_printout, 1, nchar(options_printout) - 1)
  return(options_printout)
}
