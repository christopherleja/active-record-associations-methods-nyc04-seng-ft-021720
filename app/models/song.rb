class Song < ActiveRecord::Base
  belongs_to :artist
  belongs_to :genre

  def get_genre_name
    self.genre.name
  end

  def drake_made_this
    if self.artist.name.include?("Drake")
      self.artist = "Drake"
    else
      Artist.create(name: "Drake")
      self.artist.name = "Drake"
    end
  end
end