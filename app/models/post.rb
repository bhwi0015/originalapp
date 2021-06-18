class Post < ApplicationRecord
  mount_uploader :video, VideoUploader
  belongs_to :user
  has_one_attached :image
  has_many :comments, dependent: :destroy
end
