require 'rails_helper'

describe Race, type: :model do
  context "validations" do
    it {should validate_presence_of :title}
  end
  context "relationships" do
    it {should have_many :characters}
  end
  context "creation" do
    it "should be able to be created without character" do
    race = Race.create!(title: "Test Race")
    expect(race).to be_valid
    end
  end
end
