class Tag < ActiveRecord::Base
  belongs_to :photo
  validates :snippet, :presence => true, length: { maximum: 10}

  def find_by_tag
    photos_match = []
    Photo.all.each do |photo|
      photo.tags.each do |tag|
        tag == Tag.find(self.id).snippet
        photos_match.push(photo)
      end
    end
    photos_match
  end

end
