class Market < ActiveRecord::Base
  geocoded_by :address
  after_validation :geocode, :geocode, :if => :address_changed?
  mount_uploader :picture, PictureUploader
end
