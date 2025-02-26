class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def with_artist
    "#{self.artist.name} - #{self.title}"
  end
end
