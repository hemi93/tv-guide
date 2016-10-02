module V1
  # Serializer for Channel model
  class ChannelSerializer < ActiveModel::Serializer
    attributes :id, :name, :category

    def category
      V1::CategorySerializer.new(object.category).serializable_hash
    end
  end
end
