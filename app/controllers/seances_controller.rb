class SeancesController < ApplicationController
	skip_before_action :authenticate_user!, only: :index
	before_action :set_seance, only: [:show, :edit, :update, :destroy]

	def index
		@seances = Seance.all
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
