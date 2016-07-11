class SeancesController < ApplicationController
	skip_before_action :authenticate_user!, only: [:index, :search]
	before_action :set_seance, only: [:show, :edit, :update, :destroy]

	def search
		if params[:random_search]
			if params[:random_search][:random].present?
				@seances = Seance.search(params[:random_search][:random])
			else
				@seances = Seance.all
			end
		end
	end

	def index
	  @seances = Seance.all

		if params[:search]

			if params[:search][:sport].present?
				sport = Sport.find(params[:search][:sport])
				@seances = @seances.where(sport: sport)
			end
			if params[:search][:address].present?
				@seances = @seances.near(params[:search][:address], 10)
			end
			if params[:search][:start_at].present?
			  start_at_parse = Date.parse(params[:search][:start_at]).strftime('%a, %d %b %Y %H:%M:%S %z')
				@seances = @seances.where("start_at > ?", start_at_parse)
			end		
		end
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
  	params.require(:seance).permit(:title, :description, :number_of_people, :start_at, :created_at, :girl_only, :region, :departement, :sport_id, :address)
  end

  def set_seance
  	@seance = Seance.find(params[:id])
  end

end
