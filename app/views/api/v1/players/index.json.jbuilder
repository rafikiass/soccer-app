json.players do
	json.array! @players do |player|
		json.name player.name
		json.dob player.dob
		json.position player.position
		json.number player.number
		json.team_ID player.team_id
	end
end