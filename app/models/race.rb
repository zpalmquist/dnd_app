class Race < ApplicationRecord
  validates_presence_of :title
  belongs_to :character
end
