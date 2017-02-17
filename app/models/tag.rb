class Tag < ActiveRecord::Base
  belongs_to :photo
  validates :snippet, :presence => true, length: { maximum: 10}

  def find_by_tag
    photos_match = []
    Photo.all.each do |photo|
      if photo.tags.include?(self.id)
        found_photos.push(photo)
      end
    end
    photos_match
  end

end
