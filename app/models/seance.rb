class Seance < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport

  #geocoder
  geocoded_by :address
  after_validation :geocode, if: :address_changed?
  
  #searchkick
  searchkick

  #validates seance
  validates :sport, presence: true
  validates :title, presence: true, uniqueness: true, length: { in: 1..50 }
  validates :description, length: { in: 30..500 }, allow_blank: true
  validates :number_of_people, presence: true
  validates :address, presence: true
  validates :start_at, presence: true



 	REGIONS = {
    "Alsace-Champagne-Ardenne-Lorraine"       => "Alsace-Champagne-Ardenne-Lorraine",
    "Aquitaine-Poitou-Charentes-Limousin"     => "Aquitaine-Poitou-Charentes-Limousin",
    "Auvergne-Rhône-Alpes" 										=> "Auvergne-Rhône-Alpes",
    "Bourgogne-Franche-Comté"      						=> "Bourgogne-Franche-Comté",
    "Bretagne"        												=> "Bretagne",
    "Centre-Val-de-Loire"               			=> "Centre-Val-de-Loire",
    "Ile-de-France"        										=> "Ile-de-France",
    "Nord-Pas-de-Calais-Picardie"         		=> "Nord-Pas-de-Calais-Picardie",
    "Normandie"         											=> "Normandie",
    "Pays de la Loire"         								=> "Pays de la Loire",
    "Provence-Alpes-Côte d'Azur"         			=> "Provence-Alpes-Côte d'Azur",
  }

  DEPARTEMENTS = {
    "Alsace-Champagne-Ardenne-Lorraine"       => "Alsace-Champagne-Ardenne-Lorraine",
    "Aquitaine-Poitou-Charentes-Limousin"     => "Aquitaine-Poitou-Charentes-Limousin",
    "Auvergne-Rhône-Alpes" 										=> "Auvergne-Rhône-Alpes",
    "Bourgogne-Franche-Comté"      						=> "Bourgogne-Franche-Comté",
    "Bretagne"        												=> "Bretagne",
    "Centre-Val-de-Loire"               			=> "Centre-Val-de-Loire",
    "Ile-de-France"        										=> "Ile-de-France",
    "Nord-Pas-de-Calais-Picardie"         		=> "Nord-Pas-de-Calais-Picardie",
    "Normandie"         											=> "Normandie",
    "Pays de la Loire"         								=> "Pays de la Loire",
    "Provence-Alpes-Côte d'Azur"         			=> "Provence-Alpes-Côte d'Azur",
  }

end
