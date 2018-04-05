class ChangeCharacterIdToBeOptionalForCharacterClasses < ActiveRecord::Migration[5.1]
  def change
    change_column :character_classes, :character_id, :integer, null: true
  end
end
