
#' Retrieve current heroes details
#'
#' @param api list from get_api_details
#'
#' @return api results in a list
#' @export
#'
#' @examples
#' get_heroes()
get_heroes <- function(api = get_api_details()) {
  request = paste0(api$url, "IEconDOTA2_570/GetHeroes/v0001/?key=", api$key, "&language=en_us")
  data = rjson::fromJSON(RCurl::getURL(request))
  return(data)
}

#' Retrieve details about a item
#'
#' @param item_id a single item id
#' @param api list from get_api_details
#'
#' @return api results in a list
#' @export
#'
#' @examples
#' get_item_details(item_id)
get_item_details <- function(item_id, api = get_api_details()) {
  request = paste0(api$url, "IEconDOTA2_570/GetGameItems/V001/?key=", api$key, "&language=en_us")
  data = rjson::fromJSON(RCurl::getURL(request))
  return(data)
}
