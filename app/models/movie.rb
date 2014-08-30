class Movie < ActiveRecord::Base

validates :name, presence: true
validates :year, presence: true, numericality: {only_integer: true}

has_and_belongs_to_many :categories

default_scope { order(name: :asc) }

end
