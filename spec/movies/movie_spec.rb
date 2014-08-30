require 'rails_helper'

describe Movie do

  it { should validate_presence_of :name }
  it { should validate_presence_of :year }
  it { should validate_numericality_of(:year).only_integer }
  it { should have_and_belong_to_many :categories }

  it "should set the default scope to sort by name" do
    movie1 = Movie.create({name: "Nacho Libre", year: 2005})
    movie2 = Movie.create({name: "Oblivion", year: 2013})
    movie3 = Movie.create({name: "Noah", year: 2014})
    expect(Movie.all).to eq [movie1, movie3, movie2]
  end

end
