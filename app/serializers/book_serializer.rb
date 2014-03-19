class BookSerializer < ActiveModel::Serializer
  attributes :id, :title, :author, :img, :completed, :price
end