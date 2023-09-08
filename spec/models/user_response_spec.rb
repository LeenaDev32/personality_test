require 'rails_helper'

RSpec.describe UserResponse, type: :model do
  it "should belong to a question" do
    association = described_class.reflect_on_association(:question)
    expect(association.macro).to eq(:belongs_to)
  end

  it "should belong to an answer" do
    association = described_class.reflect_on_association(:answer)
    expect(association.macro).to eq(:belongs_to)
  end
end
