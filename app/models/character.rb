class Character < ApplicationRecord
  validates_presence_of :name, :max_hit_points, :ac, :xp,
                        :speed, :passive_perception, :initiative, :alignment,
                        :character_class_id, :race_id
  belongs_to :user
  has_many :races
  has_many :character_classes
end
