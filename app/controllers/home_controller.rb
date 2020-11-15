class HomeController < ApplicationController
  def index
  	@vote = Vote.new
  	@allvotes = Vote.all
  	@lastfivevotes = Vote.last(5)
  end
end
