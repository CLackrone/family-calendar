class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :location
end
