require 'rails_helper'

RSpec.describe Answer, type: :model do

  it "should belong to a question" do
    association = described_class.reflect_on_association(:question)
    expect(association.macro).to eq(:belongs_to)
  end

  it "should have many user responses" do
    association = described_class.reflect_on_association(:user_responses)
    expect(association.macro).to eq(:has_many)
  end

end

