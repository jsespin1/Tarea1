class Animal < ActiveRecord::Base

	##attr_accessible :name, :tipo, :nacimiento, :origen, :comentarios

	ANIMAL_TYPES = ["Loro", "Cocodrilo", "Mono", "Elefante", "Gorila", "Jirafa", "Lion", "Oso Panda", "Oso", "Tigre", "Zebra", "Cocodrilo"]

	def country_name
	    country = ISO3166::Country[origen]
	    country.translations[I18n.locale.to_s] || country.name
  	end
                   
end
