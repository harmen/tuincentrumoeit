class AddProducts < ActiveRecord::Migration[5.1]
  def up
    create_table :products do |t|
      t.string :name
      t.text :description
      t.integer :height
      t.date :flowering_time_begin
      t.date :flowering_time_end
      t.string :image_src
    end
  end
end
