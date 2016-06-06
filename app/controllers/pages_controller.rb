class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: :home

	def home
		@sports = {
			" Football "       => "Football",
			" Course à pied "  => "Course à pied",
			" Tennis "         => "Tennis",
			" Vélo "           => "Vélo",
			" Equitation "     => "Equitation",
			" Judo "           => "Judo",
			" Basket "         => "Basket",
			" Handball "   		 => "Handball",
			" Rugby "          => "Rugby",
			" Golf "   				 => "Golf",
			" Canoë-kayak "    => "Canoë-kayak",
			" Plongée "        => "Plongée",
			" Pétanque "       => "Pétanque",
			" Voile "          => "Voile",
			" Natation "       => "Natation",
			" Gymnastique "    => "Gymnastique",
			" Athlétisme "     => "Athlétisme",
			" Karaté "         => "Karaté",
			" Randonnée"       => "Randonnée",
			" Tennis de table" => "Tennis de table",
			" Badminton "      => " Badminton ",
		}
	end
end
