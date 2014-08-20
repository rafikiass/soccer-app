class Api::V1::TeamsController < ApplicationController
  def index

    @ranks = Unirest.get("http://football-api.com/api/?Action=standings&APIKey=#{ENV['FOOTBALL_API']}&comp_id=1204",
        headers: {"Accept" => "application/json"}).body["teams"]
    @teams = Team.all
  end
end