--==========================================================================================================================
-- IMPROVEMENTS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types
		(Type,											Kind)
VALUES	('IMPROVEMENT_TRUDEAU_UI',						'KIND_IMPROVEMENT'),
		('TRAIT_CIVILIZATION_IMPROVEMENT_TRUDEAU_UI',	'KIND_TRAIT');

-----------------------------------------------
-- Traits
-----------------------------------------------
INSERT INTO Traits
		(TraitType,										Name,									Description										)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_TRUDEAU_UI',	'LOC_IMPROVEMENT_TRUDEAU_UI_NAME',		'LOC_IMPROVEMENT_TRUDEAU_UI_DESCRIPTION'		);

-----------------------------------------------
-- Improvements
-----------------------------------------------
INSERT INTO Improvements	(
		ImprovementType,
		Name,
		Description,
		TraitType,
		Icon,
		Housing,
		PrereqCivic,
		Buildable,
		OnePerCity,
		PlunderType,
		PlunderAmount,
		TilesRequired,
		SameAdjacentValid,
		Appeal,
		Domain
		)
VALUES  (
		'IMPROVEMENT_TRUDEAU_UI', -- ImprovementType
		'LOC_IMPROVEMENT_TRUDEAU_UI_NAME', -- Name
		'LOC_IMPROVEMENT_TRUDEAU_UI_DESCRIPTION', -- Description
		'TRAIT_CIVILIZATION_IMPROVEMENT_TRUDEAU_UI', -- TraitType
		'ICON_IMPROVEMENT_TRUDEAU_UI', -- Icon
		0, -- Housing
		'CIVIC_COLONIALISM', -- PrereqCivic
		1, -- Buildable
		1, -- OnePerCity
		'PLUNDER_HEAL', -- PlunderType
		50, -- PlunderAmount
		1, -- TilesRequired
		1, -- SameAdjacentValid
		2, -- Appeal
		'DOMAIN_LAND' -- Domain
		);

-----------------------------------------------
-- Improvement_ValidBuildUnits
-----------------------------------------------
INSERT INTO Improvement_ValidBuildUnits
		(ImprovementType,			UnitType)
VALUES	('IMPROVEMENT_TRUDEAU_UI',	'UNIT_BUILDER');

-----------------------------------------------
-- Improvement_ValidTerrains
-----------------------------------------------
INSERT INTO Improvement_ValidTerrains
		(ImprovementType,				TerrainType)
SELECT	'IMPROVEMENT_TRUDEAU_UI',		TerrainType
FROM Terrains WHERE Mountain = 0 AND Water = 0;

-----------------------------------------------
-- Improvement_ValidFeatures
-----------------------------------------------
INSERT INTO Improvement_ValidFeatures
		(ImprovementType,				FeatureType)
SELECT	'IMPROVEMENT_TRUDEAU_UI',		FeatureType
FROM Features WHERE NaturalWonder = 0 AND FeatureType != 'FEATURE_VOLCANO' AND FeatureType NOT IN ('FEATURE_GEOTHERMAL_FISSURE', 'FEATURE_OASIS', 'FEATURE_REEF');

-----------------------------------------------------------------------------------
-- Improvement_YieldChanges
-----------------------------------------------------------------------------------	
INSERT or REPLACE INTO Improvement_YieldChanges	
		(ImprovementType,				YieldType,						YieldChange)
VALUES	('IMPROVEMENT_TRUDEAU_UI',		'YIELD_PRODUCTION',				2),
		('IMPROVEMENT_TRUDEAU_UI',		'YIELD_FOOD',					2);
		
-----------------------------------------------------------------------------------
-- Improvement_Adjacencies
-----------------------------------------------------------------------------------
INSERT or REPLACE INTO Improvement_Adjacencies	
		(ImprovementType,				YieldChangeId)
VALUES	('IMPROVEMENT_TRUDEAU_UI',	'IMPROVEMENT_TRUDEAU_UI_TundraAdjacency'			),
		('IMPROVEMENT_TRUDEAU_UI',	'IMPROVEMENT_TRUDEAU_UI_TundraHillsAdjacency'		),
		('IMPROVEMENT_TRUDEAU_UI',	'IMPROVEMENT_TRUDEAU_UI_SnowAdjacency'				),
		('IMPROVEMENT_TRUDEAU_UI',	'IMPROVEMENT_TRUDEAU_UI_SnowHillsAdjacency'			);

INSERT INTO Adjacency_YieldChanges
		(ID,												Description,	YieldType,				YieldChange,	TilesRequired,		AdjacentDistrict		)
VALUES	('IMPROVEMENT_TRUDEAU_UI_TundraAdjacency',			'Placeholder',	'YIELD_CULTURE',		1,				1,					'TERRAIN_TUNDRA'		),
		('IMPROVEMENT_TRUDEAU_UI_TundraHillsAdjacency',		'Placeholder',	'YIELD_CULTURE',		1,				1,					'TERRAIN_TUNDRA_HILLS'	),
		('IMPROVEMENT_TRUDEAU_UI_TundraAdjacency',			'Placeholder',	'YIELD_CULTURE',		1,				1,					'TERRAIN_SNOW'			),
		('IMPROVEMENT_TRUDEAU_UI_TundraHillsAdjacency',		'Placeholder',	'YIELD_CULTURE',		1,				1,					'TERRAIN_SNOW_HILLS'	);

-----------------------------------------------------------------------------------
-- Improvement_Tourism
-----------------------------------------------------------------------------------	
DELETE FROM Improvement_Tourism WHERE ImprovementType = 'IMPROVEMENT_COLOSSAL_HEAD';

INSERT INTO Improvement_Tourism	
		(ImprovementType,			TourismSource,						PrereqTech,			ScalingFactor	)
VALUES	('IMPROVEMENT_TRUDEAU_UI',	'TOURISMSOURCE_CULTURE',			'TECH_FLIGHT',		100				);

-------------------------------------
-- TraitModifiers
-------------------------------------
INSERT INTO TraitModifiers			
		(TraitType,											ModifierId					)
VALUES	('TRAIT_CIVILIZATION_IMPROVEMENT_TRUDEAU_UI', 		'TRUDEAU_UI_AMENITY'		);

-------------------------------------
-- Modifiers
-------------------------------------
INSERT INTO Modifiers	
		(ModifierId,										ModifierType,											SubjectRequirementSetId		)
VALUES	('TRUDEAU_UI_AMENITY				',				'MODIFIER_SINGLE_CITY_ADJUST_IMPROVEMENT_AMENITY',		null						),
		('TRUDEAU_UI_STADIUM				',				'MODIFIER_SINGLE_PLOT_ADJUST_PLOT_YIELDS',				null						);

-------------------------------------
-- ModifierArguments
-------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,										Name,						Value			)
VALUES	('TRUDEAU_UI_AMENITY',								'Amount',					1				),
		('TRUDEAU_UI_STADIUM',								'YieldType',				YIELD_CULTURE	),
		('TRUDEAU_UI_STADIUM',								'Amount',					4				);

-----------------------------------------------
-- MomentIllustrations
-----------------------------------------------
INSERT INTO MomentIllustrations
		(MomentIllustrationType,					MomentDataType,				GameDataType,					Texture)
VALUES	('MOMENT_ILLUSTRATION_UNIQUE_IMPROVEMENT',	'MOMENT_DATA_IMPROVEMENT',	'IMPROVEMENT_TRUDEAU_UI',	'Moment_Infrastructure_Trudeau_UI.dds');
