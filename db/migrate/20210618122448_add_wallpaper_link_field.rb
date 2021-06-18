class AddWallpaperLinkField < ActiveRecord::Migration[6.1]
  def change
    add_column :wallpapers, :wallpaper, :string
  end
end
