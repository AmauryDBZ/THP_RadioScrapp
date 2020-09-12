module SongsHelper
require 'nokogiri'
require 'open-uri'

  def scrap(url, lien_css)
    page = Nokogiri::HTML(open(url))
    tmp = page.css(lien_css)
    song = tmp.text
    puts tmp
    puts '----------------------------------------------------'
    puts song
  end
end
#'div.global > div.container > div.main-content.clearfix > div.bloc-main-660 > div.bloc.bloc-660 > div'
#div#cest-quoi-ce-titre-results strong.artist
#xpath: //*[@id="cest-quoi-ce-titre-results"]//*[@class="artist"]
