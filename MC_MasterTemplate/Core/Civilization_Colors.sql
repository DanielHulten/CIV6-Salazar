/*
	Civilization Badge Colours
	Authors: MC
*/

-----------------------------------------------
-- Colors

-- This configures four colour options for your custom civilization. All values are formatted as RGBA - with the A (Alpha) channel always set to 255.

-- In this file/section, all we are doing is defining the colours and giving them unique string 'names'. We'll assign them to our civilization (via our Leader) in a separate file (Leader_Colors.sql).
-----------------------------------------------

INSERT INTO	Colors
		(Type,									Color				)
VALUES	('COLOR_DH_PORTUGAL_GREEN',				'0,102,00,255'		),
		('COLOR_DH_PORTUGAL_RED',				'255,0,0,255'	),
		('COLOR_DH_PORTUGAL_WHITE',				'255,255,255,255'	),
		('COLOR_DH_PORTUGAL_BLUE',				'0,51,153,255'		);