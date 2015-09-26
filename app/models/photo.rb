class Photo < ActiveRecord::Base
  belongs_to :user
  mount_uploader :image, ImageUploader
  default_scope { order(created_at: :desc) }
end
