class Post < ActiveRecord::Base
  belongs_to :user
  has_many :comments
  mount_uploader :image, ImageUploader
  mount_uploader :video, VideoUploader
  # validates :video, :presence => true
end
