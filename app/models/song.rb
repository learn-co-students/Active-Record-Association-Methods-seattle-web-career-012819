class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    # The reason I didn't understand this final solution is because
    # I wasn't aware it existed.
    
    # I need to dedicate time go over the methods generated in-depth.
    drake = Artist.find_or_create_by(name: "Drake")
    self.artist = drake
  end
end