class AddCharacterToRaces < ActiveRecord::Migration[5.1]
  def change
    add_reference :races, :character, foreign_key: true, index: true
  end
end
