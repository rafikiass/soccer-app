class Api::V1::TeamsController < ApplicationController
  def index
    @teams = Team.all
    @league = League.find(params[:league_id])
    @team = Team.find_by(params[:id])
    @ranks = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=#{@league.football_api_comp_id}",
        headers: {"Accept" => "application/json"}).body["teams"]
    ranks = {}
    @ranks.each do |rank|
      ranks[rank["stand_team_name"]] = rank
    end

    if params[:league_id]
      @teams = @teams.where(:league_id => params[:league_id].to_i)
    end

    @teams.each do |team|
      team.rank = ranks[team.name]
    end

    
  end
end