# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :words, through: :completed_words
  has_many :completed_words, dependent: :destroy
end
