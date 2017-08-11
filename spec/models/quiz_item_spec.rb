require 'rails_helper'

RSpec.describe QuizItem, type: :model do
  subject { described_class.new }

  it "is valid with valid attributes" do
    subject.question = "What is your name?"
    subject.answer  = "Emmanuel Corrales"
    expect(subject).to be_valid
  end

  it "is not valid without question" do
    subject.question= "What is your name?"
    expect(subject).to_not be_valid
	end

  it "is not valid without an answer" do
    subject.answer = "Emmanuel Corrales"
    expect(subject).to_not be_valid
  end

end
