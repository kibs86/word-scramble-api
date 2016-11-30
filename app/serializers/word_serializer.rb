class WordSerializer < ActiveModel::Serializer
  attributes :id, :word, :difficulty, :creator
end
