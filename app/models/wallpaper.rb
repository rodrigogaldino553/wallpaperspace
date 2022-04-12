class Wallpaper < ApplicationRecord
  has_one_attached :picture

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 3 }
end
