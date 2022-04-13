class Wallpaper < ApplicationRecord
  has_one_attached :wallpaper

  validates :name, presence: true
  validates :description, presence: true, length: { minimum: 3 }

  validates :wallpaper, attached: true, content_type: ['image/png', 'image/jpg', 'image/jpeg'], size: { less_than: 3000.kilobytes, message: 'File is too large! maximun allowed: 3MB' }
  

  #before_save :rename_wallpaper_file

  #def rename_wallpaper_file(wallpaper)
  #  wallpaper.filename = wallpaper.name
  #end
end
