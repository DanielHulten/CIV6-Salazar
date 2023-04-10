/*
	Civilization Text Entries
	Authors: MC
*/

-----------------------------------------------
-- General notes on 'localization' (or 'in-game text')

-- The entries in this file, as well as those in Leader_Localisation.sql, are where we define the text that will actually display, in-game. Fundamentally, certain unique code strings have associated 'localisation' strings. In this file, we specify the exact string of characters that will display in place of the unique code string.

-- In all cases, localisation strings always start with LOC_ - such that we can easily tell them apart from game code.
-----------------------------------------------

INSERT INTO LocalizedText
			(Language, Tag, Text)
VALUES

-----------------------------------------------
-- Civilization

-- Defines the text strings that identify your custom civilization by name.
-----------------------------------------------

	('en_US',	'LOC_CIVILIZATION_DH_PORTUGAL_NAME',			'Portugal'				),
	('en_US',	'LOC_CIVILIZATION_DH_PORTUGAL_DESCRIPTION',		'Portuguese Empire'		),
	('en_US',	'LOC_CIVILIZATION_DH_PORTUGAL_ADJECTIVE',  		'Portuguese'			),
	
-----------------------------------------------
-- Civilization Unique Ability

-- Defines the text strings that name and describe your custom civilization's Unique Ability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

/*
	('en_US',	'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_NAME',				'Let the Gods feed us!'				),
	('en_US',	'LOC_TRAIT_CIVILIZATION_MC_LET_THE_GODS_FEED_US_DESCRIPTION',	
	'Holy Site buildings will yield an additional +2 [ICON_Food] Food, alongside their usual [ICON_Faith] Faith.'	),
*/

-----------------------------------------------
-- Civilization Unique Infrastructure (Improvement)

-- Defines the text strings that name and describe your custom civilization's Unique Infrastructure (in this case, Improvement) and its capability.

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------

/*
	('en_US',	'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_NAME',				'Colossal Head'								),
	('en_US',	'LOC_IMPROVEMENT_OLMEC_COLOSSAL_HEAD_DESCRIPTION',
	'Unlocks the Builder ability to construct a Colossal Head, unique to the Olmec. [NEWLINE][NEWLINE] +1 [ICON_Faith] Faith, +1 [ICON_SCIENCE] Science. +1 [ICON_Faith] Faith if adjacent to a Campus, +1 [ICON_Science] Science if adjacent to a Holy Site. Cities with at least four Colossal heads provide a [ICON_GreatArtist] Great Artist Point. May be built on Rainforest. Cannot be constructed adjacent to another Colossal Head.'	),
*/

-----------------------------------------------
-- Civilization Unique Unit

-- Defines the text strings that name and describe your custom civilization's Unique Unit and its capability. Where this replaces an existing unit, it's customary to mention this.

-- The LOC_ABILITY_UNITNAME is a brief description that appears in a separate Civilopedia entry, as well as part of a hover 'tooltip' in-game (I think).

-- Please note: The display of in-game icons in text is achieved by using [ICON_Type].
-----------------------------------------------
/*
	('en_US',	'LOC_UNIT_MC_WEREJAGUAR_NAME',	'Werejaguar'	),
	('en_US',	'LOC_UNIT_MC_WEREJAGUAR_DESCRIPTION',	 
	'The elite warriors of the Olmec military, these fearsome, masked warriors replace the Spearman and receive a [ICON_Strength] Combat Strength boost during [ICON_Glory_Golden_Age] Golden Ages.'	),

	('en_US',	'LOC_ABILITY_MC_WEREJAGUAR',  '+5 [ICON_Strength] Combat Strength during a [ICON_Glory_Golden_Age] Golden Age.'	),
*/

-----------------------------------------------
-- Mountains

-- Defines the text strings to be used for the custom mountain range names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom mountain range names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_MOUNTAIN_SERRA_DE_SINTRA',			'Serra de Sintra'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_SERRA_DO_GERES',			'Serra do Gerês'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_SERRA_DO_LAROUCO',			'Serra do Larouco'		),
	('en_US',	'LOC_NAMED_MOUNTAIN_SERRA_DE_MONTEJUNTO',		'Serra de Montejunto'	),
	('en_US',	'LOC_NAMED_MOUNTAIN_SERRA_DA_ARRABIDA',			'Serra da Arrábida'		),

-----------------------------------------------
-- Rivers

-- Defines the text strings to be used for the custom river names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom river names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

	('en_US',	'LOC_NAMED_RIVER_SADO_RIVER',				'Sado River'	),

-----------------------------------------------
-- Lakes

-- Defines the text strings to be used for the custom lake names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom lake names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

/*
	('en_US',	'LOC_NAMED_LAKE_CHAPALA',				'Chapala'			),
	('en_US',	'LOC_NAMED_LAKE_PATZCUARO',				'Pátzcuaro'			),
	('en_US',	'LOC_NAMED_LAKE_BACALAR',				'Bacalar'			),
	('en_US',	'LOC_NAMED_LAKE_LAGUNA_CATEMACO',		'Laguna Catemaco'	),
	('en_US',	'LOC_NAMED_LAKE_EL_CARACOL',			'El Caracol'		),
*/

-----------------------------------------------
-- Deserts

-- Defines the text strings to be used for the custom desert names that were defined in Civilization_Config.sql.

-- These entries need only be here if custom desert names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

/*
	('en_US',	'LOC_NAMED_DESERT_SONORA',		'Desierto de Soñora'		),
	('en_US',	'LOC_NAMED_DESERT_LA_GUAJIRA',	'Desierto La Guajira'		),
	('en_US',	'LOC_NAMED_DESERT_SECHURA',		'Desierto de Sechura'		),
*/

-----------------------------------------------
-- Volcanoes

-- Defines the text strings to be used for the custom volcano names that were defined in Civilization_Config.sql. As per the note in that file, these should only be present if you are developing a mod that will leverage/require Gathering Storm (Expansion2) functionality.

-- These entries need only be here if custom volcano names were defined.

-- Please note: Special characters are able to be used as this file has been saved using the "Unicode (UTF-8 without signature)" encoding in ModBuddy's Save As feature.
-----------------------------------------------

/*
	('en_US',	'LOC_NAMED_VOLCANO_PICO_DE_ORIZABA',	'Pico de Orizaba'			),
	('en_US',	'LOC_NAMED_VOLCANO_TAJUMULCO',			'Tajumulco'					),
	('en_US',	'LOC_NAMED_VOLCANO_TACANA',				'Volcan Tacana'				),
	('en_US',	'LOC_NAMED_VOLCANO_SANTIAGUITO',		'Santiaguito'				),
	('en_US',	'LOC_NAMED_VOLCANO_CHAPARRASTIQUE',		'Chaparrastique'			),
*/

-----------------------------------------------
-- Cities

-- Defines the text strings to be used for city names by the custom civilization, that were defined in Civilization_Config.sql.

-- The order in which city names for a civilization appear is partly affected by the value set for the RandomCityNameDepth within the Civilizations table (again, in Civilization_Config.sql).
-----------------------------------------------

	('en_US',	'LOC_CITY_NAME_DH_LISBON_STK',				'Lisbon'),
	('en_US',	'LOC_CITY_NAME_DH_PORTO',					'Porto'),
	('en_US',	'LOC_CITY_NAME_DH_BRAGA',					'Braga'),
	('en_US',	'LOC_CITY_NAME_DH_COIMBRA',					'Coimbra'),
	('en_US',	'LOC_CITY_NAME_DH_VISEU',					'Viseu'),
	('en_US',	'LOC_CITY_NAME_DH_EVORA',					'Évora'),
	('en_US',	'LOC_CITY_NAME_DH_FUNCHAL',					'Funchal'),
	('en_US',	'LOC_CITY_NAME_DH_FARO',					'Faro'),
	('en_US',	'LOC_CITY_NAME_DH_GUARDA',					'Guarda'),
	('en_US',	'LOC_CITY_NAME_DH_BEJA',					'Beja'),
	('en_US',	'LOC_CITY_NAME_DH_PONTA_DELGADA',			'Ponta Delgada'),
	('en_US',	'LOC_CITY_NAME_DH_LEIRIA',					'Leiria'),
	('en_US',	'LOC_CITY_NAME_DH_GUIMARAES',				'Guimarães'),
	('en_US',	'LOC_CITY_NAME_DH_BRAGANCA',				'Bragança'),
	('en_US',	'LOC_CITY_NAME_DH_CIDADE_VELHA',			'Cidade Velha'),
	('en_US',	'LOC_CITY_NAME_DH_TOMAR',					'Tomar'),
	('en_US',	'LOC_CITY_NAME_DH_PORTALEGRE',				'Portalegre'),
	('en_US',	'LOC_CITY_NAME_DH_GOA',						'Goa'),
	('en_US',	'LOC_CITY_NAME_DH_ELVAS',					'Elvas'),
	('en_US',	'LOC_CITY_NAME_DH_SILVES',					'Silves'),
	('en_US',	'LOC_CITY_NAME_DH_TAVIRA',					'Tavira'),
	('en_US',	'LOC_CITY_NAME_DH_SAO_VICENTE',				'São Vicente'),
	('en_US',	'LOC_CITY_NAME_DH_LAMEGO',					'Lamego'),
	('en_US',	'LOC_CITY_NAME_DH_MIRANDA_DO_DOURO',		'Miranda do Douro'),
	('en_US',	'LOC_CITY_NAME_DH_ANGRA',					'Angra'),
	('en_US',	'LOC_CITY_NAME_DH_ALMADA',					'Almada'),
	('en_US',	'LOC_CITY_NAME_DH_ALCOBACA',				'Alcobaça'),
	('en_US',	'LOC_CITY_NAME_DH_DIU',						'Diu'),
	('en_US',	'LOC_CITY_NAME_DH_OURIQUE',					'Ourique'),
	('en_US',	'LOC_CITY_NAME_DH_SINTRA',					'Sintra'),
	('en_US',	'LOC_CITY_NAME_DH_CHAVES',					'Chaves'),
	('en_US',	'LOC_CITY_NAME_DH_LAGOS',					'Lagos'),
	('en_US',	'LOC_CITY_NAME_DH_ALANDROAL',				'Alandroal'),
	('en_US',	'LOC_CITY_NAME_DH_SAO_DOMINGOS_DE_RANA',	'São Domingos de Rana'),
	('en_US',	'LOC_CITY_NAME_DH_CASCAIS',					'Cascais'),
	('en_US',	'LOC_CITY_NAME_DH_ALBUFEIRA',				'Albufeira'),
	('en_US',	'LOC_CITY_NAME_DH_SAGRES',					'Sagres'),
	('en_US',	'LOC_CITY_NAME_DH_ESTORIL',					'Estoril'),
	('en_US',	'LOC_CITY_NAME_DH_OEIRAS',					'Oeiras'),
	('en_US',	'LOC_CITY_NAME_DH_PORTIMAO',				'Portimão'),
	
-----------------------------------------------
-- Citizens

-- Defines the text strings to be used for the names of citizens by the custom civilization, that were defined in Civilization_Config.sql.
-----------------------------------------------
	
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_1',				'Airas'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_2',				'Ansur'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_3',				'Bellchior'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_4',				'Estevoo'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_5',				'Joam'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_6',				'Loys'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_7',				'Lopo'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_8',				'Pero'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_9',				'Mendo'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MALE_10',				'Xil'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_1',				'Toda'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_2',				'Eyria'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_3',				'Margaida'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_4',				'Maior'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_5',				'Lyonor'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_6',				'Katalina'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_7',				'Guymar'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_8',				'Ilduara'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_9',				'Ilena'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_10',			'Giomar'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_1',		'Diogo'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_2',		'João'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_3',		'Marco'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_4',		'Luís'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_5',		'Duarte'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_6',		'Manuel'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_7',		'Francisco'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_8',		'Rodrigo'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_9',		'Pedro'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_10',		'Bruno'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_1',		'Marta'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_2',		'Maria'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_3',		'Joana'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_4',		'Ana'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_5',		'Leonor'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_6',		'Mariana'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_7',		'Rita'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_8',		'Catarina'	),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_9',		'Sofia'		),
	('en_US',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_10',		'Margarida'	),
	
-----------------------------------------------
-- Info

-- These define the text strings that primarily appear in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.
-----------------------------------------------

	('en_US',	'LOC_CIVINFO_DH_PORTUGAL_LOCATION',		'Southwestern Europe'					),
	('en_US',	'LOC_CIVINFO_DH_PORTUGAL_SIZE',			'92,090 square km (57,222 square mi)'	),
	('en_US',	'LOC_CIVINFO_DH_PORTUGAL_POPULATION',	'c. 10 million'							),
	('en_US',	'LOC_CIVINFO_DH_PORTUGAL_CAPITAL',		'Lisbon (Lisboa)'						),

-----------------------------------------------
-- Civilopedia

-- The content of the below entries represents the detailed entry for your custom civilization in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_PREFIX_CIVNAME_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number).

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_1',		
	'Portugal went from being a small medieval kingdom on the Atlantic coast of the Iberian peninsula to a massive maritime empire. At its height in the 1500s, Portugal controlled parts of South America, Africa, Asia, and Oceania. As one of the first European countries to take up colonial ventures, Portugal is responsible for the first great wave of globalization: the movement of people, ideas, and spices around the world to an extent never seen before.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_2',		
	'Like most of Europe, the region that would one day become Portugal was rocked by regional disputes and conquests. Originally a part of Roman Lusitania, Portugal after the Roman Empire became a part of the Al-Andalus region of the Umayyad Caliphate. But don\'t let the word "conquest" paint too dark a picture: life in Al-Andalus during the turn of the first millennium would have been a bright spot in comparison with many parts of Western Europe, as, while Europe was going through the Dark Ages, arts and learning flourished across the peninsula via centers such as Cordoba.'),	
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_3',	
	'Umayyad rule extended until the 1100s, when Dom Afonso Henriques led a successful rebellion. For this, Afonso I is giving the title “The Founder,” in recognition of having established the first independent Portuguese state. Afonso, along with other Christian kings in the region, continued the Reconquista - the campaign to overthrow Moorish (Muslim) rule in Iberia. Famously, Alfonso took Lisbon in 1147, aided (unintentionally) by an influx of English Crusaders taking shelter in Portugal to avoid the stormy Atlantic. Realizing that they could fight their version of the Crusades closer to home, they stayed and helped to expel the Umayyads from the region (they were permitted to loot captured cities and ransom prisoners as payment). In 1249, Afonso III captured the southern city of Faro, solidifying Portuguese dominance within the region. By the 13th century, Portugal’s borders were comparable to what they are today, and they’d made an alliance with the English that was to last through centuries.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_4',	
	'With Portugal’s newfound independence came an age of maritime exploration. The Portuguese now controlled powerful port cities as well as the benefits of Umayyad astronomy and math, allowing them to take advantage of their coastline to travel across the known (and eventually unknown) ocean. These two traits allowed Portugal to embark on a gamble - trade with Asia by braving the dangerous waters rather than rely upon all of the middlemen who made up the Silk Road - many of whom were still smarting from the loss of the Umayyads. With this in mind, João I, with his three sons, Prince Duarte, Prince Pedro, and Prince Henry “the Navigator” kicked off the Age of Discovery - Discovery, of course, for the Portuguese; residents of Malacca, Goa, and Angola might have had another word for it. This conquest was in a sense the next step from the Reconquista - the first real overseas colony for the Portuguese was the conquest of Ceuta, in North Africa, very close to the Portuguese coast. The Portuguese continued to “explore” the seas and set up colonies starting along the coast of Africa and moving all the way to India and East Asia. By the early 1500s, there were series of Portuguese colonies nearly spanning the world, including places such as Angola, Mozambique, Somalia, Goa (in India), Malacca (in present-day Malaysia), Timor, and a trade post in Japan. The institution of these colonies and trade routes made Portugal very powerful and very wealthy within a short amount of time, as Portuguese merchants controlled the import and export of gold, spices, but also the trafficking of enslaved persons, leading to increased riches and an increased thirst for new conquests, new trade goods - and new converts to Catholicism, an emphasis that was to doom Portuguese colonies in many places; Malay sultans and Japanese daimyo didn\'t mind trade, but conversion threatened to break apart their political order (something of which the more canny Dutch took note).'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_5',	
	'Portugal had a friendly rivalry with their neighbor, Spain, when it came to this exploration. After Christopher Columbus “discovered” America in 1492 and solidified a Spanish claim to that territory, Portugal knew they had to find a way to one-up their neighbor. Portuguese explorers had stumbled upon the coast of Brazil, and, after a bitter dispute with Spain, the Pope had to step in to finally resolve them with the Treaty of Tordesillas, which divided up the New World’s “discoveries” : those east of the line would be Portuguese, and those west would be Spanish. Both sides found this agreeable enough (not that they’d argue with the Pope) and went about their business of conquest, but as European explorers began to fill in the map, it quickly became apparent that Spain had inherited gold-rich Mexico, Peru, and most of North America, whereas Portugal received coastal Brazil. (No one, it seemed, consulted with the indigenous peoples first).'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_6',	
	'The peace with their neighbor doesn’t last, however, and after a series of unfortunate events in Portugal led to a throne without an heir, Portugal found themselves seated with a Spanish king. Philip II of Spain claimed the throne through his mother’s line and marched on Portugal. After his decisive victories, he was crowned Philip I of Portugal (since he couldn’t be Philip II there, with no prior Philip I). Portugal wouldn’t be independent again until 1640 after the Portuguese Restoration War, and even then, they had to wait another 28 years for Spain to recognize that independence.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_7',	
	'Fortune appeared to follow after that when gold was discovered in Brazil. The new flow of wealth helped to enrich Portugal’s economy and gave them a financial cushion, something sorely needed when a magnitude nine earthquake hit Lisbon in 1755. Sebastião José de Carvalho e Melo, or the Marquis of Pombal for short, survived the destruction and without a pause, went about rebuilding the city. His swift action had the city rebuilt in a year, and in a stroke of brilliance, he had the buildings designed to withstand earthquakes.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_8',	
	'Napoleon invaded Portugal as a part of his conquest of Europe in the 1800s, and when he seized Lisbon, the Portuguese capital moved to Brazil, in Rio de Janeiro. Portugal pushed back Napoleon with the help of their English allies – solidifying a bond that had been present since the beginning. But this move was the end of Portugal\'s Brazilian claim: at the end of the war, Lisbon became the capital once again after Brazil declared its independence from Portugal.'),
	('en_US',	'LOC_PEDIA_CIVILIZATIONS_PAGE_CIVILIZATION_DH_PORTUGAL_CHAPTER_HISTORY_PARA_9',	
	'Portugal today remains a strongly Catholic nation, and is a core member of the European Union. It remains famous for its food and drink (including green wine!), melancholic fado music, and cosmopolitan outlook. Portugal and Britain keep close ties, although in peak tourist season the Portuguese might sometimes think twice…');

	-----------------------------------------------
-- Unique Unit Civilopedia Entry

-- The content of the below entry represents the detailed entry for your custom civilization's unique unit in the Civilopedia.

-- The format for the element references must follow: LOC_PEDIA_UNITS_PAGE_UNIT_PREFIX_CIVNAME_UU_CHAPTER_HISTORY_PARA_X (where X is the ascending paragraph number). Other entries are possible for different unique element-types - such as BUILDINGS or IMPROVEMENTS. These require replacing UNITS, UNIT and UU respectively in the below example with the appropriate strings.

-- Unique Building example:			LOC_PEDIA_BUILDINGS_PAGE_BUILDING_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X
-- Unique Improvement example:		LOC_PEDIA_IMPROVEMENTS_PAGE_IMPROVEMENT_PREFIX_CIVNAME_UI_CHAPTER_HISTORY_PARA_X

-- These elements are inserted through this mod, but are not referenced in other parts of it - the game logic understands that when the elements follow this naming convention, they are to be used to populate the Civilopedia.

-- The total number of paragraphs defined is entirely optional - this can be extended/shortened as required.
-----------------------------------------------

/*
	('en_US',	'LOC_PEDIA_UNITS_PAGE_UNIT_MC_OLMEC_UU_CHAPTER_HISTORY_PARA_1',  	
	'The Olmecs first used warfare to expand trade and access to resources. Fighters from the Olmec city of San Lorenzo utilized obsidian-edged weapons. Sleight of hand and nimble of foot, they wore carved masks to intimidate their foes.'	);
*/

