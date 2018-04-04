require 'rails_helper'

describe Character, type: :model do
  context "validations" do
    it {should validate_presence_of :name}
    # it {should validate_presence_of :height}
    # it {should validate_presence_of :weight}
    # it {should validate_presence_of :eye_color}
    # it {should validate_presence_of :age}
    # it {should validate_presence_of :skin_color}
    # it {should validate_presence_of :hair_color}
    it {should validate_presence_of :max_hit_points}
    it {should validate_presence_of :ac}
    it {should validate_presence_of :xp}
    it {should validate_presence_of :speed}
    it {should validate_presence_of :passive_perception}
    it {should validate_presence_of :initiative}
    it {should validate_presence_of :alignment}
  end
  context "relationships" do
    it {should belong_to :user}
    it {should have_many :races}
    it {should have_many :character_classes}
  end
end
