class Wallpaper < ApplicationRecord
  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 3 }
  has_one_attached :wallpaper

  #before_save :rename_wallpaper_file

  #def rename_wallpaper_file(wallpaper)
  #  wallpaper.filename = wallpaper.name
  #end
end
