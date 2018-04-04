class AddUserToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :user, foreign_key: true, index: true
  end
end
