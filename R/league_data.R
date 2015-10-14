
#' Retireve current live league games
#'
#' @param api list from get_api_details
#'
#' @return api results in a list
#' @export
#'
#' @examples
#' get_live_league_games()
get_live_league_games <- function(api = get_api_details()) {
  request = paste0(api$url, "IDOTA2Match_570/GetLiveLeagueGames/v0001/?key=", api$key, "&language=en_us")
  data = rjson::fromJSON(RCurl::getURL(request))
  return(data)
}

#' Retrieve league details
#'
#' @param api list from get_api_details
#'
#' @return api results in a list
#' @export
#'
#' @examples
#' get_league_listings()
get_league_listings <- function(api = get_api_details()) {
  request = paste0(api$url, "IDOTA2Match_570/GetLeagueListing/v0001/?key=", api$key, "&language=en_us")
  data = rjson::fromJSON(RCurl::getURL(request))
  return(data)
}
