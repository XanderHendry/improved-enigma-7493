class Chef < ApplicationRecord
   validates_presence_of :name
   has_many :dishes

   def chef_ingredients
     dishes.joins(:ingredients).distinct.pluck("ingredients.name")
   end
end