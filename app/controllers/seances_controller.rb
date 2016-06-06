class SeancesController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
	before_action :set_seance, only: [:show, :edit, :update, :destroy]

	def index
		@seances = Seance.all
		@sports = {
      " < 400 k€"        => "0-400000",
      " 400-800 k€ "     => "400000-800000",
      " 800-1200 k€ "    => "800000-1200000",
      " 1200-1600 k€ "   => "1200000-1600000",
      " 1600-2000 k€ "   => "1600000-2000000",
      " 2000-2400 k€ "   => "2000000-2400000",
      " 2400-2800 k€ "   => "2400000-2800000",
      " 2800-3200 k€ "   => "2800000-3200000",
      " > 3200 k€ "      => "3200000-1000000000"
    }
	end

	def show
	end

	def create
		@seance = Seance.new(seance_params)
		@seance.user = current_user
		if @seance.save
			redirect_to @seance
		else
			render :new
		end
	end

	def new
    # @sports = Sport.all.map{ |u| [ u.name, u.id ] }
		@seance = Seance.new
		@regions = Seance::REGIONS
		@departements = Seance::DEPARTEMENTS
	end

	def edit
	end

	def update
		if @seance.update(seance_params)
			redirect_to seance_path(@seance)
		else
			render :edit
		end
	end

	def destroy
		@seance.destroy
		redirect_to seances_path
	end

	private

	def seance_params
    params.require(:seance).permit(:title, :description, :number_of_people, :start_at, :created_at, :girl_only, :region, :departement, :sport_id)
  end

  def set_seance
  	@seance = Seance.find(params[:id])
  end

end
