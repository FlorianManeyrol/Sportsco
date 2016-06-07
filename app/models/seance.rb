class Seance < ActiveRecord::Base
  belongs_to :user
  belongs_to :sport

  # include PgSearch
  # pg_search_scope :search_by_title, :against => :title

  validates :title, presence: true, uniqueness: true, length: { in: 1..50 }

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
#   Ain 	
# Aisne 	
# 03	Allier 	
# 04	Alpes-de-Haute-Provence 	
# 05	Hautes-Alpes 	
# 06	Alpes-Maritimes 	
# 07 	Ardèche 	
# 08 	Ardennes 	

# 09 	Ariège 	
# 10 	Aube 	
# 11 	Aude 	
# 12	Aveyron	
# 13	Bouches-du-Rhône	

# 14	Calvados	

# 15	Cantal	

# 16	Charente	

# 17	Charente-Maritime	La Rochelle 	1790 sous le nom de Charente-Inférieure, renommé en 1941 
# 18	Cher	Bourges 	1790 
# 19	Corrèze	Tulle 	1790 
# 2A	Corse-du-Sud 	Ajaccio 	1790 (la Corse a ensuite formé un département unique avant d'être redivisée en 1975)
# 2B	Haute-Corse	Bastia	1790 (la Corse a ensuite formé un département unique avant d'être redivisée en 1975)
# 21	Côte-d'Or	Dijon 	1790 
# 22	Côtes d'Armor	St-Brieuc 	1790 sous le nom de Côtes-du-Nord, renommé en 1990
# 23	Creuse	Guéret 	1790 
# 24	Dordogne	Périgueux 	1790 
# 25	Doubs	Besançon 	1790 
# 26	Drôme	Valence 	1790 
# 27	Eure	Evreux 	1790 
# 28	Eure-et-Loir	Chartres 	1790 
# 29	Finistère	Quimper 	1790 
# 30	Gard	Nîmes 	1790 
# 31	Haute-Garonne	Toulouse 	1790 
# 32	Gers	Auch 	1790 
# 33	Gironde	Bordeaux 	1790 
# 34	Hérault	Montpellier 	1790 
# 35	Ille-et-Vilaine	Rennes 	1790 
# 36	Indre	Châteauroux 	1790 
# 37	Indre-et-Loire 	Tours	1790 
# 38	Isère	Grenoble 	1790 
# 39	Jura	Lons-le-Saunier 	1790 
# 40	Landes	Mont-de-Marsan 	1790 
# 41	Loir-et-Cher	Blois 	1790 
# 42	Loire	Montbrison (1793) puis St-Étienne 	1793 
# 43	Haute-Loire	Le Puy 	1790 
# 44	Loire-Atlantique	Nantes 	1790 sous le nom de Loire-Inférieure, 
# renommé en 1957
# 45	Loiret	Orléans 	1790 
# 46	Lot	Cahors 	1790 
# 47	Lot-et-Garonne	Agen 	1790 
# 48	Lozère	Mende 	1790 
# 49	Maine-et-Loire	Angers 	1791
# 50	Manche	St-Lô 	1790 
# 51	Marne	Châlons-sur-Marne 	1790 
# 52	Haute-Marne	Chaumont 	1790 
# 53	Mayenne	Laval 	1790 
# 54	Meurthe-et-Moselle	Nancy 	1871 (partie de Meurthe, Moselle)
# 55	Meuse	Bar-le-Duc 	1790 
# 56	Morbihan	Vannes 	1790 
# 57	Moselle	Metz 	1790 
# 58	Nièvre	Nevers 	1790 
# 59	Nord	Lille 	1790 
# 60	Oise	Beauvais	1790 
# 61	Orne	Alençon 	1790 
# 62	Pas-de-Calais	Arras 	1790 
# 63	Puy-de-Dôme	Clermont-Ferrand 	1790 
# 64	Pyrénées-Atlantiques	Pau 	1790 sous le nom de Basses-Pyrénées, renommé en 1969
# 65	Hautes-Pyrénées	Tarbes 	1790 
# 66	Pyrénées-Orientales	Perpignan 	1790 
# 67	Bas-Rhin	Strasbourg 	1790 
# 68	Haut-Rhin	Colmar 	1790 
# 69	Rhône	Lyon 	1793 
# 70	Haute-Saône	Vesoul 	1790 
# 71	Saône-et-Loire	Mâcon 	1790 
# 72	Sarthe	Le Mans 	1790 
# 73	Savoie	Chambéry 	1860 
# 74	Haute-Savoie	Annecy 	1860 
# 75	Paris	Paris 	1964
# 76	Seine-Maritime	Rouen 	1790 sous le nom de Seine-Inférieure, renommé en 1955
# 77	Seine-et-Marne	Melun 	1790 
# 78	Yvelines	Versailles 	1964
# 79	Deux-Sèvres	Niort 	1790 
# 80	Somme	Amiens	1790 
# 81	Tarn	Albi 	1790 
# 82	Tarn-et-Garonne	Montauban 	1808
# 83	Var	Toulon 	1790 
# 84	Vaucluse	Avignon 	1793
# 85	Vendée	La Roche-sur-Yon 	1790 
# 86	Vienne	Poitiers 	1790 
# 87	Haute-Vienne	Limoges 	1790 
# 88	Vosges	Épinal 	1790 
# 89	Yonne	Auxerre 	1790 
# 90	Terr. de Belfort	Belfort 	1871 (Haut-Rhin non annexé par l'Allemagne)
# 91	Essonne	Evry 	1964
# 92	Hauts-de-Seine	Nanterre 	1964
# 93	Seine-St-Denis	Bobigny 	1964
# 94	Val-de-Marne	Créteil 	1964
# 95	Val-D'Oise
end
