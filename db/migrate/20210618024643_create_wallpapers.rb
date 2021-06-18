class CreateWallpapers < ActiveRecord::Migration[6.1]
  def change
    create_table :wallpapers do |t|
      t.string :name
      t.text :description
      t.string :category

      t.timestamps
    end
  end
end
