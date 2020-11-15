class HomeController < ApplicationController
  def index
  	@vote = Vote.new
  	@allvotes = Vote.all.order('created_at DESC')
  	@lastfivevotes = Vote.last(5)
  end
end
