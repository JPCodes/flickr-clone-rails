class AddDescriptionToPhotos < ActiveRecord::Migration[5.0]
  def change
    add_column :photos, :description, :string
  end
end
