/*
	Main Civilization Configuration
	Authors: MC
*/

-----------------------------------------------
-- Types

-- This inserts the civilization reference into the primary Data Types table as a playable Civilization. This is mandatory. The string listed under 'Type' must be used throughout the mod when referring to the CivilizationType.

-- It is customary for this to take the following format: CIVILIZATION_PREFIX_CIVNAME

-- PREFIX: A 'unique', brief string of characters - often derived from the modder's initials, name or other alias (e.g. MC, MATT or MYALIAS). This is used to differentiate from other mods, primarily.
-- CIVNAME: The name of the civilization itself (e.g. FRANCE, GERMANY or RUSSIA).
-----------------------------------------------

INSERT INTO	Types
			(Type,							Kind						)
VALUES		('CIVILIZATION_DH_PORTUGAL',		'KIND_CIVILIZATION'		);
		
-----------------------------------------------
-- Civilizations

-- This inserts some basic configuration into the list of Civilizations that the game recognises. The below entry contains all seven columns required for this table to be fully populated - no fields are ommitted in the below example.

-- Locally-referenced values (i.e. those defined in this mod): CivilizationType, Name, Description, Adjective
-- Game-referenced values (i.e. those drawn from the base game):

-- StartingCivilizationLevelType: For a playable civilization, this must always be: CIVILIZATION_LEVEL_FULL_CIV. The game utilises this string to differentiate between playable civilizations and city-states (and any other lesser entities).
-- RandomCityNameDepth: An integer value, this is the size of the pool of city names from which the game chooses the next built city's name. The capital will always be built first; after which, the game will pick randomly from the next X cities listed (where X = value).
-- Ethnicity: Picked from an explicit list of defined ethnicities, this must be one of ETHNICITY_AFRICAN, ETHNICITY_ASIAN, ETHNICITY_EURO, ETHNICITY_MEDIT or ETHNICITY_SOUTHAM
-----------------------------------------------

INSERT INTO	Civilizations
			(
			CivilizationType,
			Name,
			Description,
			Adjective,
			StartingCivilizationLevelType,
			RandomCityNameDepth,
			Ethnicity
			)

VALUES		(
			'CIVILIZATION_DH_PORTUGAL', --CivilizationType
			'LOC_CIVILIZATION_DH_PORTUGAL_NAME', -- Name
			'LOC_CIVILIZATION_DH_PORTUGAL_DESCRIPTION', -- Description
			'LOC_CIVILIZATION_DH_PORTUGAL_ADJECTIVE', -- Adjective
			'CIVILIZATION_LEVEL_FULL_CIV', -- StartingCivilizationLevelType
			5, -- RandomCityNameDepth
			'ETHNICITY_EURO' -- Ethnicity
			);

-----------------------------------------------
-- NamedMountains

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named mountain range has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom mountain range names defined in the NamedMountainCivilizations, below.

-- Compatibility: NamedMountains were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

REPLACE INTO NamedMountains
		(NamedMountainType,							Name											)
VALUES	('NAMED_MOUNTAIN_SERRA_DE_SINTRA',			'LOC_NAMED_MOUNTAIN_SERRA_DE_SINTRA'			),
		('NAMED_MOUNTAIN_SERRA_DO_GERES',			'LOC_NAMED_MOUNTAIN_SERRA_DO_GERES'				),
		('NAMED_MOUNTAIN_SERRA_DO_LAROUCO',			'LOC_NAMED_MOUNTAIN_SERRA_DO_LAROUCO'			),
		('NAMED_MOUNTAIN_SERRA_DE_MONTEJUNTO',		'LOC_NAMED_MOUNTAIN_SERRA_DE_MONTEJUNTO'		),
		('NAMED_MOUNTAIN_SERRA_DA_ARRABIDA',		'LOC_NAMED_MOUNTAIN_SERRA_DA_ARRABIDA'			);

-----------------------------------------------
-- NamedMountainCivilizations

-- This ties named mountain ranges to your custom civilization. This is optional. The entries for NamedMountainType can either be new, custom mountain ranges or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedMountainCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedMountainCivilizations
		(CivilizationType,			NamedMountainType								)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DA_ESTRELA'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DE_MONCHIQUE'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DE_SINTRA'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DO_GERES'				),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DO_LAROUCO'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DE_MONTEJUNTO'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_MOUNTAIN_SERRA_DA_ARRABIDA'			);

-----------------------------------------------
-- NamedRivers

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named river has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom river names defined in the NamedRiverCivilizations, below.

-- Compatibility: NamedRivers were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

 REPLACE INTO NamedRivers
 		(NamedRiverType,					Name									)
 VALUES	('NAMED_RIVER_SADO_RIVER',			'LOC_NAMED_RIVER_SADO_RIVER'			);

-----------------------------------------------
-- NamedRiverCivilizations

-- This ties named rivers to your custom civilization. This is optional. The entries for NamedRiverType can either be new, custom rivers or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedRiverCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedRiverCivilizations
		(CivilizationType,			NamedRiverType							)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_MINHO_RIVER'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_MONDEGO_RIVER'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_ZEZERE_RIVER'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_GUADIANA_RIVER'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_TAGUS'					),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_DOURO_RIVER'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_LERMA'					),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_GRANDE_DE_SANTIAGO'	),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_FUERTE'				),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_CONCHOS'				),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_RIVER_SADO_RIVER'			);

-----------------------------------------------
-- NamedLakes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named lake has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom lake names defined in the NamedLakeCivilizations, below.

-- Compatibility: NamedLakes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

--INSERT OR REPLACE INTO NamedLakes
--		(NamedLakeType,						Name								)
--VALUES	('NAMED_LAKE_CHAPALA',				'LOC_NAMED_LAKE_CHAPALA'		),
--		('NAMED_LAKE_PATZCUARO',			'LOC_NAMED_LAKE_PATZCUARO'			),
--		('NAMED_LAKE_BACALAR',				'LOC_NAMED_LAKE_BACALAR'			),
--		('NAMED_LAKE_LAGUNA_CATEMACO',		'LOC_NAMED_LAKE_LAGUNA_CATEMACO'	),
--		('NAMED_LAKE_EL_CARACOL',			'LOC_NAMED_LAKE_EL_CARACOL'			);

-----------------------------------------------
-- NamedLakeCivilizations

-- This ties named lakes to your custom civilization. This is optional. The entries for NamedLakeType can either be new, custom lakes or those that exist in the Gathering Storm (Expansion2) files. In the below example, the first entry exists already in the game - all of the others we have created ourselves.

-- Compatibility: NamedLakeCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedLakeCivilizations
		(CivilizationType,			NamedLakeType								)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOA_DO_FOGO'				),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOA_DAS_SETE_CIDADES'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOA_DAS_FURNAS'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOAS_DE_SANTIAGO'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOAS_DE_BERTIANDOS'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_PATEIRA_DE_FERMENTELOS'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_LAKE_LAGOA_DA_VELA'				);

-----------------------------------------------
-- NamedSeas

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named sea has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom sea names defined in the NamedSeaCivilizations, below.

-- In order to present the code required for NamedSeas, but also to showcase the use of another SQL command - INSERT OR IGNORE - I have chosen, for this example, to only stipulate two NamedSeas, both of which already exist in the game files. Using 'INSERT OR IGNORE', our attempts to create duplicate entries will be ignored. As all of our entries already exist, the four lines of code are not actually needed at all - they are here to provide a representative code example only.

-- Compatibility: NamedSeas were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

--INSERT OR IGNORE INTO NamedSeas
--		(NamedSeaType,						Name											)
--VALUES	('NAMED_SEA_GULF_OF_CALIFORNIA',	'LOC_NAMED_SEA_GULF_OF_CALIFORNIA_NAME'		),
--		('NAMED_SEA_GULF_OF_MEXICO',		'LOC_NAMED_SEA_GULF_OF_MEXICO_NAME'				);

-----------------------------------------------
-- NamedSeaCivilizations

-- This ties named seas to your custom civilization. This is optional. The entries for NamedSeaType can either be new, custom seas or those that exist in the Gathering Storm (Expansion2) files. In the below example, both of the entries already exist in the Gathering Storm game files.

-- Compatibility: NamedSeaCivilizations were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedSeaCivilizations
		(CivilizationType,			NamedSeaType						)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_SEA_SETUBAL_BAY'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_SEA_BAY_OF_ANGRA'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_SEA_BAY_OF_REFUGO'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_SEA_FUNCHAL_BAY'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_SEA_GULF_OF_CADIZ'		);

-----------------------------------------------
-- NamedDeserts

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named desert has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedDesertCivilizations, below.

-- Learning Point: In this example, we're configuring three named deserts. Two of these deserts do not exist in the game's NamedDeserts table. However, NAMED_DESERT_SONORAN does. This example illustrates the usefulness of the REPLACE command. It will replace the Name value for NAMED_DESERT_SONORAN with the one we specify. For the other entries - which we're creating - it will add them to the table.

-- The LOC_NAMED_DESERT_SONORA will allow us to give the NAMED_DESERT_SONORAN a new display name, whilst still maintaining the link between NAMED_DESERT_SONORAN and CIVILIZATION_AMERICA. It's a small amendment, but it allows us to adjust the display/flavour text and implement a link to our custom civilization, in one go. If we did not want to adjust the display/flavour text, we could just exclude the entry from the NamedDeserts table, directly below, and include it only in the NamedDesertCivilizations table (in the section after the one below).

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

--REPLACE INTO NamedDeserts
--		(NamedDesertType,			Name							)
--VALUES	('NAMED_DESERT_SONORAN',	'LOC_NAMED_DESERT_SONORA'	),
--		('NAMED_DESERT_LA_GUAJIRA',	'LOC_NAMED_DESERT_LA_GUAJIRA'	),
--		('NAMED_DESERT_SECHURA',	'LOC_NAMED_DESERT_SECHURA'		);

-----------------------------------------------
-- NamedDesertCivilizations

-- This ties named deserts to your custom civilization. This is optional. The entries for NamedDesertType can either be new, custom deserts (those defined above) or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: NamedDeserts were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedDesertCivilizations
		(CivilizationType,			NamedDesertType					)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_BARREIRO_DA_FANECA'	);

-----------------------------------------------
-- NamedVolcanoes

-- This list of locally-referenced values ensures that flavour text is displayed wherever a named volcano has been linked to your custom civilization.

-- All Name references have a corresponding entry in Civilization_Localisation.sql.

-- This is an optional section and only required if there are new, custom desert names defined in the NamedVolcanoCivilizations, below.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

--REPLACE INTO NamedVolcanoes
--		(NamedVolcanoType,					Name								)
--VALUES	('NAMED_VOLCANO_PICO_DE_ORIZABA',	'LOC_NAMED_VOLCANO_PICO_DE_ORIZABA'	),
--		('NAMED_VOLCANO_TAJUMULCO',			'LOC_NAMED_VOLCANO_TAJUMULCO'		),
--		('NAMED_VOLCANO_TACANA',			'LOC_NAMED_VOLCANO_TACANA'			),
--		('NAMED_VOLCANO_SANTIAGUITO',		'LOC_NAMED_VOLCANO_SANTIAGUITO'		),
--		('NAMED_VOLCANO_CHAPARRASTIQUE',	'LOC_NAMED_VOLCANO_CHAPARRASTIQUE'	);

-----------------------------------------------
-- NamedVolcanoCivilizations

-- This ties named volcanoes to your custom civilization. This is optional. The entries for NamedVolcanoType can either be new, custom volcanoes or those that exist in the Gathering Storm (Expansion2) files.

-- Compatibility: Volcanoes were introduced in the Gathering Storm expansion (Expansion2). This section should only be used where there is an intention to develop a mod with a dependency on Gathering Storm (Expansion2).
-----------------------------------------------

INSERT INTO NamedVolcanoCivilizations
		(CivilizationType,			NamedVolcanoType							)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'NAMED_VOLCANO_AGUA_DE_PAU_MASSIF'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_VOLCANO_CAPELINHOS_VOLCANO'		),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_VOLCANO_FURNAS_VOLCANO'			),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_VOLCANO_MOUNT_PICO'				),
		('CIVILIZATION_DH_PORTUGAL',	'NAMED_VOLCANO_SETE_CIDADES_MASSIF'		);

-----------------------------------------------
-- CityNames

-- This list of locally-referenced values ensures provides the list of city names used by the custom civilization. It is extendable, but is recommended to be at least 15 entries long. The entries in the list below interact with the RandomCityNameDepth value that is set in the Civilizations table near the head of this document.

-- All CityName references have a corresponding entry in Civilization_Localisation.sql. I have named them using a simple, sequential numbering system - however, it is generally accepted/common to give them more descriptive names (e.g. LOC_CITY_NAME_MC_SAN_LORENZO).
-----------------------------------------------

INSERT INTO	CityNames
		(CivilizationType,			CityName										)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_LISBON_STK'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_PORTO'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_BRAGA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_COIMBRA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_VISEU'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_EVORA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_FUNCHAL'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_FARO'						),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_GUARDA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_BEJA'						),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_PONTA_DELGADA'			),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_LEIRIA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_GUIMARAES'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_BRAGANCA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_CIDADE_VELHA'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_TOMAR'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_PORTALEGRE'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_GOA'						),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ELVAS'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_SILVES'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_TAVIRA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_SAO_VICENTE'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_LAMEGO'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_MIRANDA_DO_DOURO'			),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ANGRA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ALMADA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ALCOBACA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_DIU'						),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_OURIQUE'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_SINTRA'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_CHAVES'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_LAGOS'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ALANDROAL'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_SAO_DOMINGOS_DE_RANA'		),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_CASCAIS'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ALBUFEIRA'				),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_SAGRES'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_ESTORIL'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_OEIRAS'					),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITY_NAME_DH_PORTIMAO'					);
		
-----------------------------------------------
-- CivilizationCitizenNames

-- The below locally-referenced values provide yet further flavour to the game. These names are used to populate the 'Gossip' items that appear from time-to-time within the game.

-- Further flavour can be achieved by including referenced CitizenName values with equivalent 'MODERN' entries, in the format: LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_1

-- If using the MODERN CitizenName entries in addition, you must also specify a fourth column (Boolean) to the table below, named Modern. This operates as a true/false (0,1) flag, in the same way as the Female entry.

-- All CitizenName references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT INTO	CivilizationCitizenNames
		(CivilizationType,			CitizenName,								Female,		Modern)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_1',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_2',				0,		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_3',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_4',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_5',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_6',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_7',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_8',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_9',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MALE_10',				0, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_1',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_2',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_3',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_4',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_5',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_6',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_7',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_8',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_9',				1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_FEMALE_10',			1, 		0),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_1',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_2',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_3',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_4',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_5',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_6',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_7',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_8',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_9',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_MALE_10',		0, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_1',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_2',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_3',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_4',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_5',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_6',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_7',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_8',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_9',		1, 		1),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CITIZEN_DH_PORTUGAL_MODERN_FEMALE_10',		1, 		1);

-----------------------------------------------
-- CivilizationInfo

-- The below entries are primarily used in the Civilopedia - specifically in the side-bar that describes some further flavour information about your custom civilization.

-- Please note: the entries here are for flavour only. The values do not affect gameplay in any way - specifically, the LOC_CIVINFO_PREFIX_CIVNAME_CAPITAL value does not dictate the capital in-game.

-- All Header and Caption references have a corresponding entry in Civilization_Localisation.sql.
-----------------------------------------------

INSERT INTO	CivilizationInfo
		(CivilizationType,			Header,						Caption,									SortIndex		)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'LOC_CIVINFO_LOCATION',		'LOC_CIVINFO_DH_PORTUGAL_LOCATION',			10			),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CIVINFO_SIZE',			'LOC_CIVINFO_DH_PORTUGAL_SIZE',				20			),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CIVINFO_POPULATION',	'LOC_CIVINFO_DH_PORTUGAL_POPULATION',		30			),
		('CIVILIZATION_DH_PORTUGAL',	'LOC_CIVINFO_CAPITAL',		'LOC_CIVINFO_DH_PORTUGAL_CAPITAL',			40			);
		
-----------------------------------------------
-- Start Bias

-- The below game-referenced values dictate the influence on your custom civilization's starting location by the terrain, features, resources and rivers that are generated on the map. The use of the below are optional.

-- The tiered system works on a scale from 1-5, with 1 providing the strongest bias towards the named TerrainType, FeatureType, ResourceType or indeed bias towards rivers as defined in StartBiasRivers.

-- TerrainType: This must be an explicit value from the list defined within the Terrains.xml in the base game.
-- FeatureType: This must be an explicit value from the list defined in a combination of Features.xml (base game), Expansion1_Features.xml (Rise & Fall) and/or Expansion2_Features.xml (Gathering Storm). Naturally, the use of FeatureType entries from either Expansion1 or Expansion2 will dictate compatibility for your mod.
-- ResourceType: This must be an explicit value from the list defined in Resrouces.xml (base game) and Expansion1_Resources.xml (Rise & Fall). The use of a resource from Expansion1 will dictate compatibility for your mod.
-----------------------------------------------

INSERT INTO	StartBiasTerrains
		(CivilizationType,			TerrainType,			Tier		)
VALUES	('CIVILIZATION_DH_PORTUGAL',	'TERRAIN_COAST',		1		);
