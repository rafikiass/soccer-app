class Api::V1::TeamsController < ApplicationController
  def index
    
    @ranks = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=1204",
        headers: {"Accept" => "application/json"}).body["teams"]

    ranks = {}

    @ranks.each do |rank|
      ranks[rank["stand_team_name"]] = rank
    end

    @teams = Team.all

    if params[:league_id]
      @teams = @teams.where(:league_id => params[:league_id].to_i)
    end

    @teams = @teams.to_a

    @teams.each do |team|
      team.rank = ranks[team.name]
    end

    
  end
end