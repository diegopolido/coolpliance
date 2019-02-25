class Question < ApplicationRecord
  mount_uploader :image, QuestionImageUploader
  has_many :question_options, dependent: :destroy
  belongs_to :event
end
