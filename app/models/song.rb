class Song < ActiveRecord::Base
  
  # attr_accessible :artist_id, :genre_id, :notes

  belongs_to :artist
  belongs_to :genre
  has_many :notes

  accepts_nested_attributes_for :artist, :notes

  
  # def genre_name=(name)
  #   self.genre = Genre.find_or_create_by(name: name)
  # end


  #setter
  def artist_name=(name)
    self.artist = Artist.find_or_create_by(name: name)
  end
  
  #getter
  def artist_name
    self.artist ? self.artist.name : nil
  end

  # def notes_attributes=(attributes)
  #   pp attributes
  # end

  # def notes_attributes
  #   pp "here I am"
  # end


end
