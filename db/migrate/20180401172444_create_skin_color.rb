class CreateSkinColor < ActiveRecord::Migration[5.1]
  def change
    create_table :skin_colors do |t|
      t.string :color
    end
  end
end
