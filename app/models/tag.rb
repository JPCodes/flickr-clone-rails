class Tag < ActiveRecord::Base
  belongs_to :photo
  validates :snippet, :presence => true, length: { maximum: 10}
end
