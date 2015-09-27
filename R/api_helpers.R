
set_api_key <- function(key) {
  data = data.frame("key" = key)
  write.table(data, "key.txt")
}

get_api_key <- function(){
  key = read.table("key.txt", stringsAsFactors = FALSE)
  return(key$key)
}

get_api_details <- function(){
  api_details <- list(
    url = "https://api.steampowered.com/",
    key = get_api_key())
}

# GetMatchHistory Options
#   hero_id=<id>                   # Search for matches with a specific hero being played (hero ID, not name, see HEROES below)
#   game_mode=<mode>               # Search for matches of a given mode (see below)
#   skill=<skill>                  # 0 for any, 1 for normal, 2 for high, 3 for very high skill (default is 0)
#   min_players=<count>            # the minimum number of players required in the match
#   account_id=<id>                # Search for all matches for the given user (32-bit or 64-bit steam ID)
#   league_id=<id>                 # matches for a particular league
#   start_at_match_id=<id>         # Start the search at the indicated match id, descending
#   matches_requested=<n>          # Maximum is 25 matches (default is 25)
#   tournament_games_only=<string> # set to only show tournament games

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
  options_printout %<>% substr(1, nchar(options_printout) - 1)
  return(options_printout)
}
