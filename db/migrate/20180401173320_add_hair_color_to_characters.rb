class AddHairColorToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :hair_color, foreign_key: true, index: true
  end
end
