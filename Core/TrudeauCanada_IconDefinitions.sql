--==========================================================================================================================
-- ICONS
--==========================================================================================================================
-- IconTextureAtlases
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO IconTextureAtlases	
		(Name,									IconSize,	IconsPerRow,	IconsPerColumn,	Filename)
VALUES  ('ICON_ATLAS_TRUDEAU',					256,	 	1,				1,				'Trudeau256.dds'),
		('ICON_ATLAS_TRUDEAU',					80,	 		1,				1,				'Trudeau80.dds'),
		('ICON_ATLAS_TRUDEAU',					64,	 		1,				1,				'Trudeau64.dds'),
		('ICON_ATLAS_TRUDEAU',					55,	 		1,				1,				'Trudeau55.dds'),
		('ICON_ATLAS_TRUDEAU',					50,	 		1,				1,				'Trudeau50.dds'),
		('ICON_ATLAS_TRUDEAU',					48,	 		1,				1,				'Trudeau48.dds'),
		('ICON_ATLAS_TRUDEAU',					45,	 		1,				1,				'Trudeau45.dds'),
		('ICON_ATLAS_TRUDEAU',					32,	 		1,				1,				'Trudeau32.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				256,	 	1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_256.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				128,	 	1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_128.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				80,	 		1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_80.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				50,	 		1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_50.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				38,	 		1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_38.dds'),
		('ICON_ATLAS_TRUDEAU_UI',				32,	 		1,				1,				'ICON_IMPROVEMENT_TRUDEAU_UI_32.dds');
----------------------------------------------------------------------------------------------------------------------------	
-- IconDefinitions
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO IconDefinitions	
		(Name,													Atlas, 										'Index')
VALUES	('ICON_LEADER_TRUDEAU',									'ICON_ATLAS_TRUDEAU',						0),
		('ICON_IMPROVEMENT_TRUDEAU_UI',							'ICON_ATLAS_TRUDEAU_UI',					0);
--==========================================================================================================================
--==========================================================================================================================