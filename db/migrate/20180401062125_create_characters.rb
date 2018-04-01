class CreateCharacters < ActiveRecord::Migration[5.1]
  def change
    create_table :characters do |t|
      t.string :name
      t.float :height
      t.float :weight
      t.integer :age
      t.integer :max_hit_points
      t.integer :ac
      t.integer :xp
      t.integer :speed
      t.integer :passive_perception
      t.integer :initiative
    end
  end
end
