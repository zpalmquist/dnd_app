class AddRacesToCharacters < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :races, foreign_key: true, index: true
  end
end
