
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
  data = fromJSON(getURL(request))
  return(data)
}

