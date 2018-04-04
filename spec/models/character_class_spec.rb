require 'rails_helper'

describe CharacterClass, type: :model do
  context "validations" do
    it {should validate_presence_of :title}
  end
  context "relationships" do
    it {should belong_to :character}
  end
end
