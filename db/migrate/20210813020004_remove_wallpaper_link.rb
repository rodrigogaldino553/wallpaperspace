class RemoveWallpaperLink < ActiveRecord::Migration[6.1]
  def change
    remove_column :wallpapers, :wallpaper
  end
end
