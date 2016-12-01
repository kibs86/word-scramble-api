class WordSerializer < ActiveModel::Serializer
  attributes :id, :word, :difficulty, :owner_id
end
