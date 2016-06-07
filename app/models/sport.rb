class Sport < ActiveRecord::Base
	has_many :seances, dependent: :destroy
end
