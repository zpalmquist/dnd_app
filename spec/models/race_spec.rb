require 'rails_helper'

describe Race, type: :model do
  context "validations" do
    it {should validate_presence_of :title}
  end
  context "relationships" do
    it {should have_many :characters}
  end
end
