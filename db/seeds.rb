# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

# Ingredient.create(:name=>'Gin', :type=>'liquor', :description=> 'Gin is a spirit which derives its predominant flavour from juniper berries (Juniperus communis). From its earliest origins in the Middle Ages, gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry. Gin was developed on the basis of the older Jenever, and became widely popular in Great Britain when William of Orange, leader of the Dutch Republic, occupied the British throne with his wife Mary. Today, the gin category is one of the most popular and widely dis-tributed range of spirits, and is represented by products of various origins, styles, and flavour profiles that all revolve around juniper as a common ingredient.', :avatar=>File.open(File.join(Rails.root, '/public/images/liquors/beefeater_gin.jpg'))


# i = Ingredient.create
# i.name = 'Rum'
# i.i_type = 'liquor'
# i.description = 'Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. Rum can be referred to in Spanish by descriptors such as ron viejo ("old rum") and ron anejo ("aged rum").'
# i.avatar.store!(File.open(File.join(Rails.root, '/public/images/liquors/beefeater_gin.jpg')))
# i.save
Ingredient.delete_all
Ingredient.create(:name=>'Vodka', 
									:i_type=>'liquor', 
									:description=> 'Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented grains or potatoes, though some modern brands use other substances, such as fruits or sugar.', 
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/smirnoff_vodka.jpeg')))
Ingredient.create(:name=>'Gin', 
									:i_type=>'liquor', 
									:description=> 'Gin is a spirit which derives its predominant flavour from juniper berries (Juniperus communis). From its earliest origins in the Middle Ages, gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry. Gin was developed on the basis of the older Jenever, and became widely popular in Great Britain when William of Orange, leader of the Dutch Republic, occupied the British throne with his wife Mary. Today, the gin category is one of the most popular and widely distributed range of spirits, and is represented by products of various origins, styles, and flavour profiles that all revolve around juniper as a common ingredient.', 
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/beefeater_gin.jpg')))
Ingredient.create(:name=>'Rum', 
									:i_type=>'liquor', 
									:description=> 'Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. Rum can be referred to in Spanish by descriptors such as ron viejo ("old rum") and ron anejo ("aged rum").', 
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/bacardi_superior.jpg')))
Ingredient.create(:name=>'White Tequila',
									:i_type=>'liquor',
									:description=> 'This is the Blue Agave spirit in its purest form. It is clear and typically un-aged, where the true flavors and the intensity of the Agave are present, as well as the natural sweetness. It can be bottled directly after distillation, or stored in stainless steel tanks to settle for up to 4 weeks. There are some Blanco products that are aged for up to 2 months to provide a smoother or "Suave" spirit.',
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/jose_cuervo_silver.jpg')))
Ingredient.create(:name=>'Gold Tequila',
									:i_type=>'liquor',
									:description=> 'Gold Tequila is typically a Mixto, where colorants and flavorings have been added prior to bottling. These "young and adulterated" Tequilas are less expensive and used in many bars and restaurants for "mixed drinks". There are exceptions however, as a "Gold" or "Joven" Tequila can also be the result of blending a Silver Tequila with a Reposado and/or Añejo Tequila, while keeping the 100% Agave classification.',
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/jose_cuervo_gold.jpg')))
Ingredient.create(:name=>'Captain Morgan', 
									:i_type=>'liquor', 
									:description=> "Captain Morgan's Rum is distilled from sugar cane. The combination of the type of yeasts employed for fermentation, distillation method, aging conditions, and blending determines the characteristic flavor of rum. Made with molasses, water, mash and yeast, Captain Morgan Original Spiced rum is distilled in a continuous still. Once distilled, the clear spirit is aged in oak barrels for up to a year, adding a golden color and character to the rum before the flavors and spices are added. The brand’s taste is achieved through a proprietary recipe, which is blended into the rum mixture at the final stages of production, making use of spices indigenous to the Caribbean Islands.", 
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/captain_morgan.jpg')))
Ingredient.create(:name=>'Vodka', 
									:i_type=>'liquor', 
									:description=> 'Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented grains or potatoes, though some modern brands use other substances, such as fruits or sugar.', 
									:avatar=>File.open(File.join(Rails.root, '/public/images/liquors/smirnoff_vodka.jpeg')))
  # create_table "ingredients", force: true do |t|
  #   t.string "name"
  #   t.string "type"
  #   t.text   "description"
  #   t.string "i_avatar"
  # end