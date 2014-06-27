class LeaguesController < ApplicationController
  def leagues
    @leagues = League.all
  end

  def new
    @league = League.new

  end
  
  def create
    League.create(params[:league])
  end

  def show
    @league = League.find(params[:id])
  end

  def edit
    @league = League.find(params[:id])
  end

  def update
    @league = League.find(params[:id])
    @league.update(params[:league])
  end

  def destroy
    @league = League.find(params[:id])
    @league.destroy
  end


end
