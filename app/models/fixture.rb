class Fixture < ActiveRecord::Base
	has_many :teams
	belongs_to :gameweek
end
