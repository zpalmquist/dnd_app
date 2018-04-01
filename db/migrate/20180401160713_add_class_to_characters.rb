class AddClassToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :class, foreign_key: true, index: true
  end
end
