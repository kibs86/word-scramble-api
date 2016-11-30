class CompletedWordSerializer < ActiveModel::Serializer
  attributes :id
  has_one :user
  has_one :word
end
