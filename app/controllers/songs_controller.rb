class SongsController < ApplicationController
  include SongsHelper

  def index
  end

  def create
    puts params
    puts '-----------------song controller -----------------'
    scrap(params[:url], params[:chemin_CSS])
    redirect_to root_path
  end
end
