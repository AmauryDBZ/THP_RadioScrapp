module SongsHelper
require 'nokogiri'
require 'open-uri'

  def scrap(url, lien_css)
    page = Nokogiri::HTML(open("http://www.radio-active.net/ecouter/les-playlists/"))
    category = page.xpath('//*[@class="page"]//strong').text
    song = page.xpath('//*[@class="page"]//p[8]').text
    count = page.xpath('//*[@class="page"]//*').count
    puts count
    puts 'song helper -----------------------'
    #puts song

    i = 0
    text = ""
    title = ""
    while text != 'La Cicadidaelesque Playlist :'
      item = page.xpath("//*[@class='page']//p[#{i}]")
      text = item.text
      puts text

      if text.include? ":"
        category = text
      end

      if text.include? " - "

      end

      i += 1
      puts i
      if i > 20
        break
      end
    end
  end
end
