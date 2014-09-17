json.teams do
	json.array! @teams do |team|
		json.name team.name
		json.manager team.manager
		json.league_id team.league_id
		json.image team.photo_url
		json.stand_position team.rank["stand_position"].to_i
		json.stand_points team.rank["stand_points"].to_i
		json.rank team.rank
		json.slug team.slug
	end
end

