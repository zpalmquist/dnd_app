class CreateEyeColor < ActiveRecord::Migration[5.1]
  def change
    create_table :eye_colors do |t|
      t.string :color
    end
  end
end
