module V1
  # Serializer for Show model
  class ShowSerializer < ActiveModel::Serializer
    attributes :id, :name, :channel

    def channel
      V1::ChannelSerializer.new(object.channel).serializable_hash
    end
  end
end
