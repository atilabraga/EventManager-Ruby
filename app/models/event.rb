class Event < ActiveRecord::Base

  validates :name, presence: true
  validates :short_description, length: {maximum: 50}
  validates :short_description, presence: true, length: {maximum: 500}
  validates :begin_date, presence: true
  validates :end_date, presence: true

end
