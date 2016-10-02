module V1
  # Serializer for Schedule model
  class ScheduleSerializer < ActiveModel::Serializer
    attributes :id, :date, :show

    def show
      V1::ShowSerializer.new(object.show).serializable_hash
    end
  end
end
