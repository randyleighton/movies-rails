require 'rails_helper'

describe Movie do

it { should validate_presence_of :name }
it { should validate_presence_of :year }

it { should have_and_belong_to_many :categories }

end
