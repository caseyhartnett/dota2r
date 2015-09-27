
#' Retrieve basic match history
#'
#' @param hero_id Search for matches with a specific hero being played
#' @param game_mode Search for matches of a given mode
#' @param skill 0 for any, 1 for normal, 2 for high, 3 for very high skill
#' @param min_players the minimum number of players required in the match
#' @param account_id Search for all matches for the given user
#' @param league_id matches for a particular league
#' @param start_at_match_id Start the search at the indicated match id, descending
#' @param matches_requested Maximum is 25 matches (default is 25)
#' @param tournament_games_only set to only show tournament games
#' @param api list from get_api_details
#'
#' @return api results in a list
#' @export
#'
#' @examples
#' get_match()
get_match <- function(hero_id = NULL, game_mode = NULL, skill = NULL, min_players = NULL,
                      account_id = NULL, league_id = NULL, start_at_match_id = NULL,
                      matches_requested = NULL, tournament_games_only = NULL,
                      api = get_api_details()) {

  options = list("hero_id" = hero_id, "game_mode" = game_mode, "skill" = skill,
                 "min_players" = min_players, "account_id" = account_id, "league_id" = league_id,
                 "start_at_match_id" = start_at_match_id, "matches_requested" = matches_requested,
                 "tournament_games_only" = tournament_games_only)

  options_printout <- create_options_printout(options)
  request = paste0(api$url, "IDOTA2Match_570/GetMatchHistory/V001/?key=", api$key, options_printout)
  data = rjson::fromJSON(RCurl::getURL(request))
  return(data)
}

