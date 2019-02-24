class Answer < ApplicationRecord
  belongs_to :employee
  belongs_to :question_option
end
