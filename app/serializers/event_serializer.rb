class EventSerializer < ActiveModel::Serializer
  attributes :id, :name, :time, :location, :category
  has_many :family_members
end
