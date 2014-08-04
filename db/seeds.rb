# Team.create!([
#   {team: "Liverpool F.C.", rank: "4", manager: nil, schedule: nil},
#   {team: "Manchester City F.C.", rank: nil, manager: nil, schedule: nil},
#   {team: "Manchester United F.C.", rank: nil, manager: nil, schedule: nil},
#   {team: "Liverpool F.C.", rank: "4", manager: nil, schedule: nil},
#   {team: "Manchester City F.C.", rank: nil, manager: nil, schedule: nil}
# ])

# XML API
# #===================
client = Xmlsoccer::Client.new(api_key: 'VLQTPIPEUHYLQXSLUPZBDFGNGEPYPWSPTOIJIEJFUUTSWCLTKI', api_type: 'Demo')
# teams = client.get_all_teams_by_league_and_season(league: 'Scottish Premier League', season_date_string: '1415')


# teams.each do |team|

#   # Team.create(:name => team[:name], :league_id => 7, :stadium => team[:stadium], :homepage => team[:home_page_url])
  
# end

#Players!
players = client.get_players_by_team(team_id: '45')
players.each do |player|
  Player.create()

#ESPN API
#====================



# client = ESPN::Client.new(api_key: 'xzswdj9d9eexp7nwep3qnz5e')
# teams = client.teams(:soccer, "por.1")

# team = Team.find_by(:name => espnteam["name"])
# team.update(:abbr => espnteam["abbreviation"])

# teams.each do |team|
# puts team["abbreviation"]
# puts team["name"]
# puts team["nickname"]
# puts team["location"]

  # Team.create(:name => team["name"], :league_id => 5, :nickname => team["nickname"], :location => team["location"], :abbr => team["abbreviation"])

# end
