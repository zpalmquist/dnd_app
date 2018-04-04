class Character < ApplicationRecord

  validates_presence_of :name, :max_hit_points, :ac, :xp, :speed, :passive_perception, :initiative, :alignment

end
