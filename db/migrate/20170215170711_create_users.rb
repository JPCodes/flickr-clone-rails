class CreateUsers < ActiveRecord::Migration[5.0]
  def change
    create_table :users do |t|
      t.string :name
    end

    create_table :photos do |t|
      t.integer :user_id
    end

    create_table :comments do |t|
      t.string :content
      t.integer :user_id
      t.integer :photo_id
    end
  end
end
