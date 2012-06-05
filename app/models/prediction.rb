class Prediction < ActiveRecord::Base
  has_one :user
  has_one :fixture
  attr_accessible :user_id, :fixture_id, :home_prediction, :away_prediction
end
