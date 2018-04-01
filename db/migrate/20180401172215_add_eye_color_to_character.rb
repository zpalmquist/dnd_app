class AddEyeColorToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :eye_color, foriegn_key: true, index: true
  end
end
