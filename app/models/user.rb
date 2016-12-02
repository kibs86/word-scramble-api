# frozen_string_literal: true
class User < ActiveRecord::Base
  include Authentication
  has_many :examples
  has_many :words, through: :completed_words
  has_many :owned_words, foreign_key: 'owner_id', class_name: 'Word'
  has_many :completed_words, dependent: :destroy
end
