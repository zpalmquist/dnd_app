class AddSkinColorToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :skin_color, foriegn_key: true, index: true
  end
end
