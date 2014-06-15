# i = Ingredient.create
# i.name = 'Rum'
# i.i_type = 'liquor'
# i.description = 'Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. Rum can be referred to in Spanish by descriptors such as ron viejo ("old rum") and ron anejo ("aged rum").'
# i.avatar.store!(File.open(File.join(Rails.root, '/public/images/liquors/beefeater_gin.jpg')))
# i.save

Ingredient.delete_all

############################
######## Liquors ###########
############################

Ingredient.create(:name=>'Vodka', 
									:i_type=>'liquor', 
									:description=> 'Vodka is a distilled beverage composed primarily of water and ethanol, sometimes with traces of impurities and flavorings. Traditionally, vodka is made by the distillation of fermented grains or potatoes, though some modern brands use other substances, such as fruits or sugar.', 
									:avatar=>'liquors/smirnoff_vodka.jpeg')
Ingredient.create(:name=>'Gin', 
									:i_type=>'liquor', 
									:description=> 'Gin is a spirit which derives its predominant flavour from juniper berries (Juniperus communis). From its earliest origins in the Middle Ages, gin has evolved over the course of a millennium from a herbal medicine to an object of commerce in the spirits industry. Gin was developed on the basis of the older Jenever, and became widely popular in Great Britain when William of Orange, leader of the Dutch Republic, occupied the British throne with his wife Mary. Today, the gin category is one of the most popular and widely distributed range of spirits, and is represented by products of various origins, styles, and flavour profiles that all revolve around juniper as a common ingredient.', 
									:avatar=>'liquors/beefeater_gin.jpg')
Ingredient.create(:name=>'Rum', 
									:i_type=>'liquor', 
									:description=> 'Rum is a distilled alcoholic beverage made from sugarcane byproducts, such as molasses, or directly from sugarcane juice, by a process of fermentation and distillation. The distillate, a clear liquid, is then usually aged in oak barrels. Rum can be referred to in Spanish by descriptors such as ron viejo ("old rum") and ron anejo ("aged rum").', 
									:avatar=> 'liquors/bacardi_superior.jpg')
Ingredient.create(:name=>'White Tequila',
									:i_type=>'liquor',
									:description=> 'This is the Blue Agave spirit in its purest form. It is clear and typically un-aged, where the true flavors and the intensity of the Agave are present, as well as the natural sweetness. It can be bottled directly after distillation, or stored in stainless steel tanks to settle for up to 4 weeks. There are some Blanco products that are aged for up to 2 months to provide a smoother or "Suave" spirit.',
									:avatar=> 'liquors/jose_cuervo_silver.jpg')
Ingredient.create(:name=>'Gold Tequila',
									:i_type=>'liquor',
									:description=> 'Gold Tequila is typically a Mixto, where colorants and flavorings have been added prior to bottling. These "young and adulterated" Tequilas are less expensive and used in many bars and restaurants for "mixed drinks". There are exceptions however, as a "Gold" or "Joven" Tequila can also be the result of blending a Silver Tequila with a Reposado and/or Añejo Tequila, while keeping the 100% Agave classification.',
									:avatar=>'liquors/jose_cuervo_gold.jpg')
Ingredient.create(:name=>'Captain Morgan', 
									:i_type=>'liquor', 
									:description=> "Captain Morgan's Rum is distilled from sugar cane. The combination of the type of yeasts employed for fermentation, distillation method, aging conditions, and blending determines the characteristic flavor of rum. Made with molasses, water, mash and yeast, Captain Morgan Original Spiced rum is distilled in a continuous still. Once distilled, the clear spirit is aged in oak barrels for up to a year, adding a golden color and character to the rum before the flavors and spices are added. The brand’s taste is achieved through a proprietary recipe, which is blended into the rum mixture at the final stages of production, making use of spices indigenous to the Caribbean Islands.", 
									:avatar=>'liquors/captain_morgan.jpg')
Ingredient.create(:name=>'Bourbon', 
									:i_type=>'liquor', 
									:description=> 'While there are many types of whiskey, from Scotland and Ireland, to Canada and the US, bourbon is a special form created, distilled, and aged in the eastern United States, mainly in the state of Kentucky. It is classified as a distilled spirit made from a fermented mash, mainly consisting of corn, and aged in white oak barrels for at least two years. The unique nature of bourbon can be derived from the iron-free water used in the distillation process. Local distillers have used their resources to perfect a world class product with a distinct amber color, and natural flavor.', 
									:avatar=>'liquors/jim_beam_bourbon.jpg')
Ingredient.create(:name=>'Brandy', 
									:i_type=>'liquor', 
									:description=> 'Brandy is a spirit created by distilling wine that was created by using fermented grapes, although some brands are created using pomace and/or fermented fruit. It has an alcohol content that usually ranges between 36 and 60 percent, and is usually consumed after a meal.', 
									:avatar=>'liquors/ej_brandy.jpg')
Ingredient.create(:name=>'Canadian Whisky', 
									:i_type=>'liquor', 
									:description=> 'A whisky mainly made of rye, usually lighter-bodied than American whiskeys. It usually matures in oak casks for 5 years, but can be bottled at 2.', 
									:avatar=>'liquors/canadian_club.jpg')

Ingredient.create(:name=>'Irish Whisky', 
									:i_type=>'liquor', 
									:description=> 'Considered to be the father of all whiskey, Irish Whiskey is often a blend of pot-stilled malted and unmalted whiskey and column-stilled corn-based grain whiskey or, as in the case of Bushmills, triple distilled malted barley (single malt). This complex blend and the fact that Irish Whiskey malt is dried in a closed kiln, away from fire and smoke, distinguish it from its closest whiskey cousin, Scotch. Great care is taken during distillation to keep the temperature low so as not to break the delicate sweet, toasty honey flavor. It is aged in used bourbon (or various wine) barrels for at least 3 years.', 
									:avatar=>'liquors/jameson_irish_whiskey.jpg')
Ingredient.create(:name=>'Scotch Whisky', 
									:i_type=>'liquor', 
									:description=> 'By tradition and standard, Scotch Whisky uses the spelling for whisky without the "e". The distinct smoky flavor of this distilled classic is due to the malt drying process. Part of which is done over a peat-fueled fire, which allows the smoke to come in direct contact with the malt. Although smoke does define Scotch, each region of Scotland produces a different and distinct flavor characteristics. When choosing a Scotch you will find either "single malt" or "blended" on the label along with an age statement. In the case of blended, the age is that of the youngest whiskey in the blend.', 
									:avatar=>'liquors/dewars_18.jpg')

########################
##### Mixers ###########
########################

Ingredient.create(:name=>'Angosturas Bitters', 
									:i_type=>'mixer', 
									:description=> 'Angostura Bitters is made from a secret blend of rare tropical herbs and spices. It is said to contain over forty ingredients, and was developed in 1824 by Surgeon General Dr. J. Siegert who spent 4 years devising the recipe that would improve the appetites and well-being of his troops.',
									:avatar=>'mixers/angostura_bitters.gif')
Ingredient.create(:name=>'Lemonade', 
									:i_type=>'mixer', 
									:description=> 'A blend of lemon juice, sugar and water.',
									:avatar=>'mixers/lemonade.gif')
Ingredient.create(:name=>'Cola', 
									:i_type=>'mixer', 
									:description=> 'Cola is a carbonated beverage that originally contained caffeine from the kola nut and cocaine from coca leaves, and was flavored with vanilla and other ingredients. Most colas now use other flavoring (and caffeinating) ingredients with a similar taste and no longer contain cocaine. It became popular worldwide after pharmacist John Pemberton invented Coca-Cola in 1886.',
									:avatar=>'mixers/cola.gif')
Ingredient.create(:name=>'Cream', 
									:i_type=>'mixer', 
									:description=> "The part of the cow's milk rich in fat which has been seperated by means of centrifugal force or otherwise.",
									:avatar=>'mixers/cream.gif')
Ingredient.create(:name=>'Eggs', 
									:i_type=>'mixer', 
									:description=> "They come from chickens. Like all ingredients- the more organic, the better tasting.",
									:avatar=>'mixers/eggs.gif')
Ingredient.create(:name=>'Ginger Ale', 
									:i_type=>'mixer', 
									:description=> "A ginger flavored carbonated soft drink.",
									:avatar=>'mixers/ginger_ale.gif')
Ingredient.create(:name=>'Grenadine', 
									:i_type=>'mixer', 
									:description=> "Grenadine is a strong red syrup made from red currants and pomegranates. It is a useful ingredient for many cocktails - acting as both a colouring and sweetener.",
									:avatar=>'mixers/grenadine.gif')
Ingredient.create(:name=>'Ice Cream', 
									:i_type=>'mixer', 
									:description=> "A cold dessert made with a combination of milk products, sweeteners and flavorings.",
									:avatar=>'mixers/ice_cream.gif')
Ingredient.create(:name=>'Milk', 
									:i_type=>'mixer', 
									:description=> "Milk contains protein, calcium, phosphorus, potassium, sodium, iodine, vitamins A and D amongst others, lactose (milk sugar) and riboflavin. Always store milk in a refrigerator milk from the offset. Milk readily absorbs flavors so always close milk cartons or other containers tightly. The storage life of milk is reduced greatly when allowed to sit out at room temperature for 30 minutes or more, as it would if put in a pitcher for serving.",
									:avatar=>'mixers/milk.gif')
Ingredient.create(:name=>'Orange Bitters', 
									:i_type=>'mixer', 
									:description=> "A bitter liquor made from the dried peel of unripe sour or bitter oranges, steeped in gin or alcohol.",
									:avatar=>'mixers/orange_bitters.gif')
Ingredient.create(:name=>'Sour Mix', 
									:i_type=>'mixer', 
									:description=> "Sweet and sour mix is a blend of lemon juice and syrup. It is often just refered to as sour mix, and is available at most liquor stores. To make your own, mix approx. eight ounces of lemon juice with two tablespoons of sugar.",
									:avatar=>'mixers/sour_mix.gif')
Ingredient.create(:name=>'Lime Juice', 
									:i_type=>'mixer', 
									:description=> "Normally best freshly squeezed, Lime Juice is an essential ingredient for cocktails. To get the most juice out of a fresh lime, bring it to room temperature and roll it under your palm against a hard surface before squeezing. Another method is to microwave them on high power for 30 seconds, let stand a couple of minutes before cutting and squeezing them.",
									:avatar=>'mixers/lime_juice.gif')
Ingredient.create(:name=>'Lemon Juice', 
									:i_type=>'mixer', 
									:description=> "Normally best freshly squeezed, Lemon Juice is an essential ingredient for cocktails. To get the most juice out of a fresh lemon, bring it to room temperature and roll it under your palm against a hard surface before squeezing. Another method is to microwave them on high power for 30 seconds, let stand a couple of minutes before cutting and squeezing them.",
									:avatar=>'mixers/lemon_juice.gif')
Ingredient.create(:name=>'Sprite', 
									:i_type=>'mixer', 
									:description=> "Sprite is a lemon-lime flavored carbonated soft drink produced by the Coca-Cola Company. It is caffeine free and contains no fat. Sprite has a taste similar to that of 7-Up. It is often common practice to substitute one for the other.",
									:avatar=>'mixers/sprite.gif')
Ingredient.create(:name=>'7-up', 
									:i_type=>'mixer', 
									:description=> "7-Up is a popular lemon-lime flavoured carbonated soft drink or soda dating back to the late 1920's. Although marginally less sweet or lemon-lime tasting, it has a very similar taste to Sprite. Substituting either one for the other is often common practice.",
									:avatar=>'mixers/7up.gif')
Ingredient.create(:name=>'Tea', 
									:i_type=>'mixer', 
									:description=> "A beverage made with tea leaves, water and normally milk and sugar.",
									:avatar=>'mixers/tea.gif')
Ingredient.create(:name=>'Coffee', 
									:i_type=>'mixer', 
									:description=> "A caffeine rich mixture of water and the seeds of berries of the coffee tree.",
									:avatar=>'mixers/coffee.gif')
Ingredient.create(:name=>'Soda', 
									:i_type=>'mixer', 
									:description=> "Soda water is the common name for water which has been charged with carbon dioxide. It is also often refered to as Seltzer Water, Sparkling Water, and Club Soda.",
									:avatar=>'mixers/soda.gif')
Ingredient.create(:name=>'Tonic', 
									:i_type=>'mixer', 
									:description=> "Fruit flavored carbonated water made with fruit extracts, sugar and quinine.",
									:avatar=>'mixers/tonic.gif')
Ingredient.create(:name=>'Limes', 
									:i_type=>'mixer', 
									:description=> "Limes should be firm to the touch, and dark green with a glossy shine. Coarse skinned and large limes tend to be thick skinned, which means you'll get less juice from them. Heavier fruits with fine-grained skin are juiciest. Avoid hard, shriveled limes - spongy, soft limes, or those with blemishes. Limes should always be refrigerated immediately.",
									:avatar=>'mixers/lime.gif')
Ingredient.create(:name=>'Lemons', 
									:i_type=>'mixer', 
									:description=> "Lemons should be firm to the touch, and bright yellow with a glossy shine. Coarse skinned and large lemons tend to be thick skinned, which means you'll get less juice from them. Heavier fruits with fine-grained skin are juiciest. Avoid hard, shriveled lemons - spongy, soft lemons - those with blemishes - or those that are greenish. Lemons can normally be stored in an airy basket at room temperature for upto two weeks, however if you plan to keep them for longer period, store them in a plastic bag in a refrigerator crisper from the offset - they will keep for up to six weeks.",
									:avatar=>'mixers/lemon.gif')

##############################
########## liqueurs ###########
##############################

Ingredient.create(:name=>'Amaretto', 
									:i_type=>'liqueur', 
									:description=> "Amaretto is an almond flavoured italian liqueur made with apricot pits.",
									:avatar=>'liqueurs/amaretto.gif')
Ingredient.create(:name=>'Blue Curacao', 
									:i_type=>'liqueur', 
									:description=> "Blue Curacao is a sweet blue liqueur, distilled and flavored from the dried peel of bitter oranges. It can also contain distillates of lemons and curacao fruit, sugar and wine. The Caribbean island of Curacao is host to much of the fruit used in these liqueurs.",
									:avatar=>'liqueurs/blue_curacao.gif')
Ingredient.create(:name=>'Chambord', 
									:i_type=>'liqueur', 
									:description=> "A sweet red raspberry flavored french liqueur made from black-raspberries, honey, fruits and herbs.",
									:avatar=>'liqueurs/chambord.gif')
Ingredient.create(:name=>'Cointreau', 
									:i_type=>'liqueur', 
									:description=> "A clear brandy based liqueur and type of triple sec flavored from the peel of sour and sweet oranges.",
									:avatar=>'liqueurs/cointreau.gif')
Ingredient.create(:name=>'Creme de Bananes', 
									:i_type=>'liqueur', 
									:description=> "A sweet, intensely flavored banana liqueur.",
									:avatar=>'liqueurs/creme_de_bananes.gif')
Ingredient.create(:name=>'Creme de Cacao', 
									:i_type=>'liqueur', 
									:description=> "A dark brown or clear chocolate-flavored liqueur made from the cacao seed.",
									:avatar=>'liqueurs/creme_de_cacao.gif')
Ingredient.create(:name=>'Creme de Menthe', 
									:i_type=>'liqueur', 
									:description=> "A sweet, white/green mint-flavored liqueur made from mint and spearmint.",
									:avatar=>'liqueurs/creme_de_menthe.gif')
Ingredient.create(:name=>'Frangelico', 
									:i_type=>'liqueur', 
									:description=> "A hazelnut flavored liqueur made primarily from the distillation of the infusion of toasted hazelnuts into alcohol and water. It is flavored with toasted coffee and cocoa, vanilla berries and rhubard root.",
									:avatar=>'liqueurs/frangelico.gif')
Ingredient.create(:name=>'Godiva', 
									:i_type=>'liqueur', 
									:description=> "A rich chocolate liqueur based on godiva chocolates. Available as white chocolate or dark chocolate liqueurs.",
									:avatar=>'liqueurs/godiva.gif')
Ingredient.create(:name=>'Goldschlager', 
									:i_type=>'liqueur', 
									:description=> "A clear swiss cinnamon schnapps, containing 24 carrot gold leaf flakes.",
									:avatar=>'liqueurs/goldschlager.gif')
Ingredient.create(:name=>'Grand Marnier', 
									:i_type=>'liqueur', 
									:description=> "An orange flavored liqueur produced from a blend of cognac, orange peel, spices and vanilla.",
									:avatar=>'liqueurs/grand_marnier.gif')
Ingredient.create(:name=>'Jagermeister', 
									:i_type=>'liqueur', 
									:description=> "A herbal-flavored bitter german liqueur, made from a blend of over 50 herbs, fruits and spices.",
									:avatar=>'liqueurs/jagermeister.gif')
Ingredient.create(:name=>'Kahlua', 
									:i_type=>'liqueur', 
									:description=> "Kahlua is a rich, dark brown coffee liqueur made from the finest Mexican coffee, with fine cane spirits and a hint of vanilla. It also contains sugar, corn syrup and vodka, and has a thicker body than most other alcoholic beverages.Kahlua is the 2nd largest single liqueur brand worldwide. Although it wasn't introduced to America until 1962, it's history dates to pre-WWII.",
									:avatar=>'liqueurs/kahlua.gif')
Ingredient.create(:name=>'Midori', 
									:i_type=>'liqueur', 
									:description=> "Midori is a vibrant green, honeydew melon flavored liqueur launched in the US in 1978. It's high versatility and refreshing melon taste has made it an essential bar ingredient, used in world famous cocktails such as the Midori Margarita and Melonball. Produced in Mexico by Suntory, Midori Melon Liqueur is today available in more than 30 countries worldwide.",
									:avatar=>'liqueurs/midori.gif')
Ingredient.create(:name=>'Rumple Minze', 
									:i_type=>'liqueur', 
									:description=> "A strong peppermint-flavored german schnapps.",
									:avatar=>'liqueurs/rumple_minze.gif')
Ingredient.create(:name=>'Sambuca', 
									:i_type=>'liqueur', 
									:description=> "Sambuca is an anise-flavored liqueur, produced by the infusion of witch elder bush and licorice, sweetened with sugar and enhanced with a secret combination of herbs and spices. White Sambuca is the traditional and generally the more popular variety, having a mellower licorice taste and lighter body than that of black sambuca.",
									:avatar=>'liqueurs/sambuca.gif')
Ingredient.create(:name=>'Southern Comfort', 
									:i_type=>'liqueur', 
									:description=> "Southern Comfort is a peach flavored bourbon liqueur. It is a traditional american spirit made from an infusion of peach and other flavorings (such as citrus and orange) into a bourbon base. It is available as both 100 proof (50 percent alcohol) and 76 proof (38 percent alcohol). Although nowadays produced in St. Louis, Missouri, the history and secret formula of Southern Comfort stretches back to 1874 where a M.W. Heron created it in his bar in New Orleans.",
									:avatar=>'liqueurs/soco.gif')
Ingredient.create(:name=>'Tia Maria', 
									:i_type=>'liqueur', 
									:description=> "A dark, medium-bodied coffee liqueur made from a fine blend of cane spirit, jamaican coffee, vanilla and sugar.",
									:avatar=>'liqueurs/tia_maria.gif')
Ingredient.create(:name=>'Triple Sec', 
									:i_type=>'liqueur', 
									:description=> "Triple sec (meaning 'Triple distilled') is a strong, sweet and colorless orange flavored liqueur. It is made from the dried peel of oranges found on Curacao, an island in the Caribbean. Curacao, Grand Marnier and Cointreau are popular triple sec's.",
									:avatar=>'liqueurs/triple_sec.gif')
  # create_table "ingredients", force: true do |t|
  #   t.string "name"
  #   t.string "type"
  #   t.text   "description"
  #   t.string "i_avatar"
  # end