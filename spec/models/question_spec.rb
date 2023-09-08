require 'rails_helper'

RSpec.describe Question, type: :model do
  it "should have many answers" do
    association = described_class.reflect_on_association(:answers)
    expect(association.macro).to eq(:has_many)
  end

  it "should have many user responses" do
    association = described_class.reflect_on_association(:user_responses)
    expect(association.macro).to eq(:has_many)
  end
end
