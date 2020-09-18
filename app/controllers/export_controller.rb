class ExportController < ApplicationController

  def new
    @songs = Song.all
    respond_to do |format|
      format.html {}
      format.csv {
        send_data @songs.to_csv, filename: "playlist-#{Date.today}.csv"
      }
    end
  end
end
