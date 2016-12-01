class Word < ActiveRecord::Base
  has_many :users, through: :completed_words
  has_many :completed_words, dependent: :destroy

  # validates :user, presence: true
end
