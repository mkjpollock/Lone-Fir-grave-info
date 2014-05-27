class MarkerCondition < ActiveRecord::Base
	has_and_belongs_to_many :graves
end
