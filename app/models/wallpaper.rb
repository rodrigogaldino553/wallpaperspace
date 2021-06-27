class Wallpaper < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 3 }
end
