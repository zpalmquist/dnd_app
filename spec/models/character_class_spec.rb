require 'rails_helper'

describe CharacterClass, type: :model do
  context "validations" do
    it {should validate_presence_of :title}
  end
  context "relationships" do
    it {should belong_to :character}
  end
  context "creation" do
    it "should be able to be created without character" do
    character_class = CharacterClass.create!(title: "Test Character Class")
    expect(character_class).to be_valid
    end
  end
end
