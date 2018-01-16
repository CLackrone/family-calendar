class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :location, :family_members, :category
end
