require 'rails_helper'

describe Character, type: :model do
  context "validations" do
    it {should validate_presence_of :name}
    it {should validate_presence_of :max_hit_points}
    it {should validate_presence_of :ac}
    it {should validate_presence_of :xp}
    it {should validate_presence_of :speed}
    it {should validate_presence_of :passive_perception}
    it {should validate_presence_of :initiative}
    it {should validate_presence_of :alignment}
    it {should validate_presence_of :character_class_id}
    it {should validate_presence_of :race_id}
  end
  context "relationships" do
    it {should belong_to :user}
    it {should belong_to :race}
    it {should belong_to :character_class}
  end
  context "creation" do
    it "should be able to be created" do
      user = User.create!()
      character_class = CharacterClass.create!(title: "Ranger")
      race = Race.create!(title: "Elf")
      character = Character.create!(name: "Test Name", max_hit_points: 20, ac: 16,
                                    xp: 0, speed: 30, passive_perception: 2,
                                    initiative: 2, alignment: "LG", character_class_id: character_class.id,
                                    race_id: race.id)
      expect(character).to be_valid
    end
  end
end
