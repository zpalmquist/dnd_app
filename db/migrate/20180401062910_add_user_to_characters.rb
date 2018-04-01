class AddUserToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :user, index: true, foriegn_key: true
  end
end
