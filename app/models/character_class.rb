class CharacterClass < ApplicationRecord
  validates_presence_of :title
  belongs_to :character, optional: true
end
