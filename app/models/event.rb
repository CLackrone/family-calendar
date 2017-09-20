class Event < ApplicationRecord
  belongs_to :category
  has_many :family_member_events
  has_many :family_members, through: :family_member_events

  validates :name, :time, :location, presence: true

  def category_name=(name)
    self.category = Category.find_or_create_by(name: name)
  end

  def category_name
    self.category.name if self.category != nil
  end

end
