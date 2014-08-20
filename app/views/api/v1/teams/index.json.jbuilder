json.ranks do 
	json.array! @ranks
end

json.teams do
	json.array! @teams do |team|
		json.name team.name
		json.manager team.manager
	end
end

