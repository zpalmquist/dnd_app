class AddAlignmentToCharacter < ActiveRecord::Migration[5.1]
  def change
    add_reference :characters, :alignment, foriegn_key: true, index: true
  end
end
