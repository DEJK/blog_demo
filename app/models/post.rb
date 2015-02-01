class Post < ActiveRecord::Base
  validates :title, presence:true, length: {maximum: 10}
  belongs_to :category
  belongs_to :user
  has_many :comments
  mount_uploader :avatar, ImageUploader
end
