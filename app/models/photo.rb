class Photo < ActiveRecord::Base
  mount_uploader :image, ImageUploader
  default_scope { order(created_at: :desc) }
end
