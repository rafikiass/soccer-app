players = Player.all
players.each do |player|
  if player.team_id == 90
    player.update(team_id: 17)
  end
  if player.team_id == 86
    player.update(team_id: 13)
  end
  if player.team_id == 87
    player.update(team_id: 14)
  end
  if player.team_id == 88
    player.update(team_id: 15)
  end
  if player.team_id == 89
    player.update(team_id: 16)
  end
  if player.team_id == 91
    player.update(team_id: 18)
  end
  if player.team_id == 92
    player.update(team_id: 19)
  end
  if player.team_id == 93
    player.update(team_id: 20)
  end
  if player.team_id == 94
    player.update(team_id: 21)
  end
  if player.team_id == 95
    player.update(team_id: 22)
  end
  if player.team_id == 96
    player.update(team_id: 23)
  end
  if player.team_id == 97
    player.update(team_id: 24)
  end
  if player.team_id == 98
    player.update(team_id: 25)
  end
  if player.team_id == 99
    player.update(team_id: 26)
  end
  if player.team_id == 100
    player.update(team_id: 27)
  end
  if player.team_id == 101
    player.update(team_id: 28)
  end
  if player.team_id == 102
    player.update(team_id: 29)
  end
  if player.team_id == 103
    player.update(team_id: 30)
  end
  if player.team_id == 104
    player.update(team_id: 31)
  end
  if player.team_id == 105
    player.update(team_id: 32)
  end
end


# client = Xmlsoccer::Client.new(api_key: 'VLQTPIPEUHYLQXSLUPZBDFGNGEPYPWSPTOIJIEJFUUTSWCLTKI', api_type: 'Full')
# players = client.get_players_by_team(team_id: 45)
# players.each do |player|
#   puts player.name
# end


