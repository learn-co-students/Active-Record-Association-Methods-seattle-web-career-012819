class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    genre.name
  end

  def drake_made_this
    # when this method is called it should assign the song's artist to Drake
    new_artist = Artist.new(name: "Drake")
    self.update(artist: new_artist)
    new_artist
  end
end