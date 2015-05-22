class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.string :img_name
      t.string :img_url

      t.timestamps
    end
  end
end
