class SportsController < ApplicationController
	def index
		@sports = policy_scope(Sport)
	end
end
