# Team.create!([
#   {team: "Liverpool F.C.", rank: "4", manager: nil, schedule: nil},
#   {team: "Manchester City F.C.", rank: nil, manager: nil, schedule: nil},
#   {team: "Manchester United F.C.", rank: nil, manager: nil, schedule: nil},
#   {team: "Liverpool F.C.", rank: "4", manager: nil, schedule: nil},
#   {team: "Manchester City F.C.", rank: nil, manager: nil, schedule: nil}
# ])

# XML API
# #===================
client = Xmlsoccer::Client.new(api_key: 'VLQTPIPEUHYLQXSLUPZBDFGNGEPYPWSPTOIJIEJFUUTSWCLTKI', api_type: 'Full')
# teams = client.get_all_teams_by_league_and_season(league: 'English Premier League', season_date_string: '1415')


# teams.each do |team|
# xmlteam = Team.find_by(:name => team[:name])
# puts xmlteam[:name]
# xmlteam.update(:stadium => team[:stadium], :homepage => :team[:homepage])
# end


#   # Team.create(:name => team[:name], :league_id => 7, :stadium => team[:stadium], :homepage => team[:home_page_url])
  
# end

#Players!
players = client.get_players_by_team(team_id: '77')
players.each do |player|
  Player.create(:name => player[:name], :number => player[:player_number], :team_id => 142, :position => player[:position], :nationality => player[:nationality], :dob => player[:date_of_birth])
  # puts player[:name]
  # puts player[:player_number]
  # puts player[:nationality]
  # puts player[:date_of_birth]
  # puts player[:position]
end

#ESPN API
#====================



# client = ESPN::Client.new(api_key: 'xzswdj9d9eexp7nwep3qnz5e')
# espnteams = client.teams(:soccer, "esp.1")

# team = Team.find_by(:name => espnteam["name"])
# team.update(:abbr => espnteam["abbreviation"])

# espnteams.each do |team|
# espnteam = Team.find_by(:espn_team_id => team["id"])
# espnteam.update(:espn_team_name => team["name"])
# puts espnteam["name"]
# puts team["name"]
# puts team["nickname"]
# puts team["location"]
# end
  # Team.create(:name => team["name"], :league_id => 5, :nickname => team["nickname"], :location => team["location"], :abbr => team["abbreviation"])

# end


# Football API

# api_teams = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=ca6bb737-ab39-9f20-52e6efb05d40&comp_id=1204",
                    # headers: {"Accept" => "application/json"}).body["teams"]
# api_teams.each do |team|
# api_team = Team.find_by(:name => team["stand_team_name"])
  # puts api_team.name
  # api_team.update(:football_api_team_id => team["stand_team_id"])
# end





