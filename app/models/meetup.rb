class Meetup < ActiveRecord::Base
  has_many :attendees
  has_many :users, through: :attendees

  validates :name, presence: true
  validates :time, presence: true
  validates :location, presence: true
  validates :duration, presence: true
  validates :date, presence: true
  validates :description, presence: true
end
