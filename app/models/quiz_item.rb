class QuizItem < ApplicationRecord
  validates_presence_of :question
  validates_presence_of :answer
end
