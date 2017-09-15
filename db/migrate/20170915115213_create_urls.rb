class CreateUrls < ActiveRecord::Migration
  def change
    create_table :urls do |t|
      t.string :url
      t.string :shortened_url
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
