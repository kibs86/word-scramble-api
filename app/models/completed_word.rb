class CompletedWord < ActiveRecord::Base
  belongs_to :user, inverse_of: :completed_words
  belongs_to :word, inverse_of: :completed_words
end
