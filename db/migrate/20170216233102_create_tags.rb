class CreateTags < ActiveRecord::Migration[5.0]
  def change
    create_table :tags do |t|
      t.string :snippet
      t.integer :photo_id
    end
  end
end
