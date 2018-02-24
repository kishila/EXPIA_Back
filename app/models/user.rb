class User < ApplicationRecord
  mount_uploader :profile_image, ProfileImageUploader

  validates :name, presence: true
  validates :profile_image, presence: true
end
