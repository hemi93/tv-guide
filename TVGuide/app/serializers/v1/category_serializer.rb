module V1
  # Serializer for Category model
  class CategorySerializer < ActiveModel::Serializer
    attributes :id, :name
  end
end
