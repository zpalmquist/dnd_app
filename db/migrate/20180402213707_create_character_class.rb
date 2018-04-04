class CreateCharacterClass < ActiveRecord::Migration[5.1]
  def change
    create_table :character_classes do |t|
      t.string :title
    end
  end
end
