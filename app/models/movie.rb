class Movie < ActiveRecord::Base

validates :name, presence: true
validates :year, presence: true

has_and_belongs_to_many :categories

end
