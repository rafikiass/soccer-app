players = Player.all
players.each do |player|
  if player.team_id == 90
    player.update(team_id: 17)
  end
end


# client = Xmlsoccer::Client.new(api_key: 'VLQTPIPEUHYLQXSLUPZBDFGNGEPYPWSPTOIJIEJFUUTSWCLTKI', api_type: 'Full')
# players = client.get_players_by_team(team_id: 45)
# players.each do |player|
#   puts player.name
# end


