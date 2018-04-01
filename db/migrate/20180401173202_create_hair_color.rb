class CreateHairColor < ActiveRecord::Migration[5.1]
  def change
    create_table :hair_colors do |t|
      t.string :color
    end
  end
end
