class AddCharacterClassToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :character_class, foriegn_key: true, index: true
  end
end
