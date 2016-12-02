class Word < ActiveRecord::Base
  has_many :users, through: :completed_words
  belongs_to :owner
  has_many :completed_words, dependent: :destroy
  # validates :user, presence: true

  def self.find_comp_words(user)
    Word.joins(:completed_words).where('completed_words.user_id' => user).ids
  end

  def self.find_diff_words(diff)
    Word.where('difficulty' => diff).ids
  end

  def self.compare_words(comp_words, diff_words)
    @words = []

    diff_words.each { |x| @words.push(x) if comp_words.exclude?(x) }

    @words
  end

  def self.find_word(user, diff)
    @user = user
    @diff = diff
    @words = []

    @comp_words = find_comp_words(@user)
    @diff_words = find_diff_words(@diff)

    @words = compare_words(@comp_words, @diff_words)
  end
end
