--==========================================================================================================================
-- LEADERS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,						Kind)
VALUES	('LEADER_TRUDEAU',			'KIND_LEADER');	
----------------------------------------------------------------------------------------------------------------------------
-- Leaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Leaders	
		(LeaderType,				Name,								Sex,		InheritFrom,		SceneLayers)
VALUES	('LEADER_TRUDEAU',		'LOC_LEADER_TRUDEAU_NAME',				'male',		'LEADER_DEFAULT',	3);	
----------------------------------------------------------------------------------------------------------------------------
-- LeaderQuotes
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderQuotes	
		(LeaderType,				Quote)
VALUES	('LEADER_TRUDEAU',	'LOC_PEDIA_LEADERS_PAGE_LEADER_TRUDEAU_QUOTE');	
----------------------------------------------------------------------------------------------------------------------------
-- HistoricalAgendas
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO HistoricalAgendas	
		(LeaderType,				AgendaType)
VALUES	('LEADER_TRUDEAU',	'AGENDA_CULTURAL_IMPORTS');	
----------------------------------------------------------------------------------------------------------------------------
-- LeaderTraits
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LeaderTraits	
		(LeaderType,									TraitType)
VALUES	('LEADER_TRUDEAU',								'TRAIT_LEADER_ALLIANCE_BUILDER');

----------------------------------------------------------------------------------------------------------------------------
-- FavoredReligions
----------------------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO FavoredReligions	
		(LeaderType,				ReligionType)
VALUES	('LEADER_TRUDEAU',	'RELIGION_CATHOLICISM');
--==========================================================================================================================
-- LEADERS: AI
--==========================================================================================================================
-- AiListTypes
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiListTypes	
		(ListType)
VALUES	('Trudeau_Buildings'),
		('Trudeau_Civics'),
		('Trudeau_DiplomaticActions'),
		('Trudeau_Districts'),
		('Trudeau_Techs'),
		('Trudeau_Units'),
		('Trudeau_Yields');
----------------------------------------------------------------------------------------------------------------------------
-- AiLists
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiLists	
		(ListType,								LeaderType,							System)
VALUES	('Trudeau_Buildings',			'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Buildings'),
		('Trudeau_Civics',				'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Civics'),
		('Trudeau_DiplomaticActions',	'TRAIT_AGENDA_CULTURAL_IMPORTS',	'DiplomaticActions'),
		('Trudeau_Districts',			'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Districts'),
		('Trudeau_Techs',				'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Technologies'),
		('Trudeau_Units',				'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Units'),
		('Trudeau_Yields',				'TRAIT_AGENDA_CULTURAL_IMPORTS',	'Yields');
----------------------------------------------------------------------------------------------------------------------------		
-- AiFavoredItems
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AiFavoredItems		
		(ListType,								Favored,	Value,	 Item)
VALUES	('Trudeau_Buildings',			1,			0,		 'BUILDING_CASA_DE_CONTRATACION'), 
		('Trudeau_Buildings',			1,			0,		 'BUILDING_GREAT_LIBRARY'), 
		('Trudeau_Buildings',			1,			0,		 'BUILDING_OXFORD_UNIVERSITY'), 
		('Trudeau_Civics',				1,			0,		 'CIVIC_FEUDALISM'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_RESEARCH'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_MILITARY'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_ECONOMIC'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_CULTURAL'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_RELIGIOUS'), 
		('Trudeau_DiplomaticActions',	1,			0,		 'DIPLOACTION_ALLIANCE_TEAMUP'), 
		('Trudeau_Districts',			1,			0,		 'DISTRICT_CAMPUS'), 
		('Trudeau_Techs',				1,			0,		 'TECH_APPRENTICESHIP'),
		('Trudeau_Techs',				1,			0,		 'TECH_EDUCATION'),
		('Trudeau_Techs',				1,			0,		 'TECH_GUNPOWDER'),
		('Trudeau_Techs',				1,			0,		 'TECH_INDUSTRIALIZATION'),
		('Trudeau_Techs',				1,			0,		 'TECH_MINING'),
		('Trudeau_Techs',				1,			0,		 'TECH_REPLACEABLE_PARTS'),
		('Trudeau_Techs',				1,			0,		 'TECH_WRITING');
--==========================================================================================================================
-- LEADERS: AGENDAS
--==========================================================================================================================
-- Types
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,									Kind)
VALUES	('TRAIT_AGENDA_CULTURAL_IMPORTS',	'KIND_TRAIT');	
----------------------------------------------------------------------------------------------------------------------------			
-- Agendas			
----------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Agendas				
		(AgendaType,							Name,									 Description)
VALUES	('AGENDA_CULTURAL_IMPORTS',			'LOC_TRAIT_CULTURAL_IMPORTS_NAME',	 'LOC_TRAIT_CULTURAL_IMPORTS_DESCRIPTION');	
----------------------------------------------------------------------------------------------------------------------------			
-- Traits			
----------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,								Name,				Description)
VALUES	('TRAIT_AGENDA_CULTURAL_IMPORTS',	'LOC_PLACEHOLDER',	'LOC_PLACEHOLDER');	
----------------------------------------------------------------------------------------------------------------------------			
-- AgendaTraits			
----------------------------------------------------------------------------------------------------------------------------				
INSERT INTO AgendaTraits				
		(AgendaType,							TraitType)
VALUES	('AGENDA_CULTURAL_IMPORTS',			'TRAIT_AGENDA_CULTURAL_IMPORTS');	
----------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
----------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,								ModifierId)
VALUES	('TRAIT_AGENDA_CULTURAL_IMPORTS',	'CULTURAL_IMPORTS_ATTACKED_CONTINENT'),
		('TRAIT_AGENDA_CULTURAL_IMPORTS',	'CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE'),
		('TRAIT_AGENDA_CULTURAL_IMPORTS',	'CULTURAL_IMPORTS_LEADS_SCIENCE'),	
		('TRAIT_AGENDA_CULTURAL_IMPORTS',	'CULTURAL_IMPORTS_RELIGION_RECEIVED');	
----------------------------------------------------------------------------------------------------------------------------
-- Modifiers
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType,									SubjectRequirementSetId)
VALUES	('CULTURAL_IMPORTS_ATTACKED_CONTINENT',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_ATTACKED_CONTINENT'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE',	'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET'),
		('CULTURAL_IMPORTS_LEADS_SCIENCE',							'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_HAS_HIGH_SCIENCE'),
		('CULTURAL_IMPORTS_RELIGION_RECEIVED',						'MODIFIER_PLAYER_DIPLOMACY_SIMPLE_MODIFIER',	'PLAYER_RELIGION_RECEIVED');
----------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,							Value)
VALUES	('CULTURAL_IMPORTS_ATTACKED_CONTINENT',						'InitialValue',					-5),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT',						'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CULTURAL_IMPORTS_REASON_ATTACKED_CONTINENT'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CULTURAL_IMPORTS_ATTACKED_CONTINENT'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE',	'InitialValue',					-5),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE',	'StatementKey',					'LOC_DIPLO_WARNING_LEADER_CULTURAL_IMPORTS_REASON_ATTACKED_CONTINENT_AND_LEADS_SCIENCE'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE',	'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE'),
		('CULTURAL_IMPORTS_LEADS_SCIENCE',							'InitialValue',					4),
		('CULTURAL_IMPORTS_LEADS_SCIENCE',							'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CULTURAL_IMPORTS_REASON_LEADS_SCIENCE'),
		('CULTURAL_IMPORTS_LEADS_SCIENCE',							'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CULTURAL_IMPORTS_LEADS_SCIENCE'),
		('CULTURAL_IMPORTS_RELIGION_RECEIVED',						'InitialValue',					6),
		('CULTURAL_IMPORTS_RELIGION_RECEIVED',						'StatementKey',					'LOC_DIPLO_KUDO_LEADER_CULTURAL_IMPORTS_REASON_RELIGION_RECEIVED'),
		('CULTURAL_IMPORTS_RELIGION_RECEIVED',						'SimpleModifierDescription',	'LOC_DIPLO_MODIFIER_CULTURAL_IMPORTS_RELIGION_RECEIVED');
----------------------------------------------------------------------------------------------------------------------------		
-- ModifierStrings		
----------------------------------------------------------------------------------------------------------------------------			
INSERT INTO ModifierStrings			
		(ModifierId,													Context,	Text)
VALUES	('CULTURAL_IMPORTS_ATTACKED_CONTINENT',						'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE',	'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('CULTURAL_IMPORTS_LEADS_SCIENCE',							'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL'),
		('CULTURAL_IMPORTS_RELIGION_RECEIVED',						'Sample',	'LOC_TOOLTIP_SAMPLE_DIPLOMACY_ALL');
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,														RequirementSetType)
VALUES	('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET',	'REQUIREMENTSET_TEST_ALL');
----------------------------------------------------------------------------------------------------------------------------	
-- RequirementSetRequirements	
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO RequirementSetRequirements	
		(RequirementSetId,														RequirementId)
VALUES	('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET',	'REQUIRES_MAJOR_CIV_OPPONENT'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET',	'REQUIRES_MET_10_TURNS_AGO'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET',	'REQUIRES_ATTACKED_CONTINENT'),
		('CULTURAL_IMPORTS_ATTACKED_CONTINENT_AND_LEADS_SCIENCE_REQ_SET',	'REQUIRES_HAS_HIGH_SCIENCE');	
--==========================================================================================================================
-- LEADERS: LOADING INFO
--==========================================================================================================================
-- LoadingInfo
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO LoadingInfo	
		(LeaderType,				BackgroundImage,			ForegroundImage,					PlayDawnOfManAudio)
VALUES	('LEADER_TRUDEAU',	'LEADER_GORGO_BACKGROUND', 	'LEADER_TRUDEAU_NEUTRAL',	0);	
--==========================================================================================================================
-- LEADERS: TRAITS
--==========================================================================================================================
-- Types
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO Types	
		(Type,										Kind)
VALUES	('TRAIT_LEADER_ALLIANCE_BUILDER',	'KIND_TRAIT');	
--------------------------------------------------------------------------------------------------------------------------			
-- Traits			
--------------------------------------------------------------------------------------------------------------------------				
INSERT INTO Traits				
		(TraitType,									Name,												Description)
VALUES	('TRAIT_LEADER_ALLIANCE_BUILDER',	'LOC_TRAIT_LEADER_ALLIANCE_BUILDER_NAME',	'LOC_TRAIT_LEADER_ALLIANCE_BUILDER_DESCRIPTION');	
--------------------------------------------------------------------------------------------------------------------------		
-- TraitModifiers		
--------------------------------------------------------------------------------------------------------------------------			
INSERT INTO TraitModifiers			
		(TraitType,									ModifierId)
VALUES	('TRAIT_LEADER_ALLIANCE_BUILDER',	'ALLIANCE_BUILDER_ALLIANCE_POINTS'),
		('TRAIT_LEADER_ALLIANCE_BUILDER',	'ALLIANCE_BUILDER_EXTRA_DISTRICT');	
--------------------------------------------------------------------------------------------------------------------------		
-- AllianceEffects		
--------------------------------------------------------------------------------------------------------------------------	
INSERT INTO AllianceEffects
		(AllianceType, 			LevelRequirement, 	ModifierID)
VALUES	('ALLIANCE_CULTURAL', 	1, 					'ALLIANCE_BUILDER_DISTRICT_PRODUCTION'),
		('ALLIANCE_ECONOMIC', 	1, 					'ALLIANCE_BUILDER_DISTRICT_PRODUCTION'),
		('ALLIANCE_MILITARY', 	1, 					'ALLIANCE_BUILDER_DISTRICT_PRODUCTION'),
		('ALLIANCE_RELIGIOUS', 	1, 					'ALLIANCE_BUILDER_DISTRICT_PRODUCTION'),
		('ALLIANCE_RESEARCH', 	1, 					'ALLIANCE_BUILDER_DISTRICT_PRODUCTION');
--------------------------------------------------------------------------------------------------------------------------
-- Modifiers
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO Modifiers	
		(ModifierId,													ModifierType,										SubjectRequirementSetId)
VALUES	('ALLIANCE_BUILDER_ALLIANCE_POINTS',					'MODIFIER_PLAYER_ADJUST_ALLIANCE_POINTS',			'ALLIANCE_BUILDER_AT_WAR_REQ_SET'),
		('ALLIANCE_BUILDER_DISTRICT_PRODUCTION',				'MODIFIER_PLAYER_CITIES_ATTACH_MODIFIER',			'ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ_SET'),
		('ALLIANCE_BUILDER_DISTRICT_PRODUCTION_MODIFIER',		'MODIFIER_CITY_INCREASE_DISTRICT_PRODUCTION_RATE',	null),
		('ALLIANCE_BUILDER_EXTRA_DISTRICT',						'MODIFIER_PLAYER_CITIES_EXTRA_DISTRICT',			'ALLIANCE_BUILDER_PLAYER_IS_ALLY_LEVEL_3_REQ_SET');
--------------------------------------------------------------------------------------------------------------------------
-- ModifierArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT INTO ModifierArguments
		(ModifierId,													Name,			Value)
VALUES	('ALLIANCE_BUILDER_ALLIANCE_POINTS',					'Amount',		1),
		('ALLIANCE_BUILDER_DISTRICT_PRODUCTION',				'ModifierId',	'ALLIANCE_BUILDER_DISTRICT_PRODUCTION_MODIFIER'),
		('ALLIANCE_BUILDER_DISTRICT_PRODUCTION_MODIFIER',		'Amount',		10),
		('ALLIANCE_BUILDER_EXTRA_DISTRICT',						'Amount',		1);
--------------------------------------------------------------------------------------------------------------------------
-- RequirementArguments
--------------------------------------------------------------------------------------------------------------------------
INSERT OR REPLACE INTO RequirementArguments
		(RequirementId,										Name,			Value)
VALUES	('ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ',		'LeaderType',	'LEADER_TRUDEAU');	
----------------------------------------------------------------------------------------------------------------------------
-- Requirements 
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO Requirements
		(RequirementId, 									RequirementType,									Inverse)
VALUES	('ALLIANCE_BUILDER_AT_WAR_REQ',				'REQUIREMENT_PLAYER_IS_AT_PEACE_WITH_ALL_MAJORS',	1),
		('ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ',		'REQUIREMENT_PLAYER_LEADER_TYPE_MATCHES',			0);
----------------------------------------------------------------------------------------------------------------------------
-- RequirementSets
----------------------------------------------------------------------------------------------------------------------------
INSERT INTO RequirementSets
		(RequirementSetId,											RequirementSetType)
VALUES	('ALLIANCE_BUILDER_AT_WAR_REQ_SET',					'REQUIREMENTSET_TEST_ALL'),
		('ALLIANCE_BUILDER_PLAYER_IS_ALLY_LEVEL_3_REQ_SET',	'REQUIREMENTSET_TEST_ALL'),
		('ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ_SET',			'REQUIREMENTSET_TEST_ALL');
----------------------------------------------------------------------------------------------------------------------------	
-- RequirementSetRequirements	
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO RequirementSetRequirements	
		(RequirementSetId,											RequirementId)
VALUES	('ALLIANCE_BUILDER_AT_WAR_REQ_SET',					'ALLIANCE_BUILDER_AT_WAR_REQ'),
		('ALLIANCE_BUILDER_PLAYER_IS_ALLY_LEVEL_3_REQ_SET',	'REQUIRES_PLAYER_IS_ALLY_LEVEL_3'),
		('ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ_SET',			'ALLIANCE_BUILDER_PLAYER_IS_MIN_REQ');
--==========================================================================================================================
-- CIVILIZATIONS
--==========================================================================================================================
-- CivilizationLeaders
----------------------------------------------------------------------------------------------------------------------------	
INSERT INTO CivilizationLeaders	
		(CivilizationType,		LeaderType,					CapitalName)
VALUES	('CIVILIZATION_CANADA',	'LEADER_TRUDEAU',	'LOC_CITY_NAME_OTTAWA');	
--==========================================================================================================================
--==========================================================================================================================