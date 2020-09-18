class SongsController < ApplicationController
  require 'nokogiri'
  require 'open-uri'

  def index
    @all_songs = Song.all
  end

  def create
    Song.destroy_all
    i=0
    @all_songs = []
    @page = Nokogiri::HTML(open(params[:url]))
    @artist = @page.xpath(params[:xpath1])
    @title = @page.xpath(params[:xpath2])
    @artist.each do |artist|
      correct_str = artist.text
      @song = Song.new(artist: correct_str[9..-6], title: @title[i].text)
      @song.save()
      i += 1
    end
    index()
  end
end
