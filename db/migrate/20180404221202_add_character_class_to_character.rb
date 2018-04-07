class AddCharacterClassToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :character_classes, :character, foreign_key: true
  end
end
