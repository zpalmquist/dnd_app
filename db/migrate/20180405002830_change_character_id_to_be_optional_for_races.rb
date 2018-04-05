class ChangeCharacterIdToBeOptionalForRaces < ActiveRecord::Migration[5.1]
  def change
    change_column :races, :character_id, :integer, null: true
  end
end
