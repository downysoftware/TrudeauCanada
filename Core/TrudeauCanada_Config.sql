--==========================================================================================================================
-- CONFIG DATA
--==========================================================================================================================
-- Players
--------------------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO Players	
		(
		CivilizationType,
		Domain,
		Portrait,
		PortraitBackground,
		LeaderType,
		LeaderName,
		LeaderIcon,
		LeaderAbilityName,
		LeaderAbilityDescription,
		LeaderAbilityIcon,
		CivilizationName,
		CivilizationIcon,
		CivilizationAbilityName,
		CivilizationAbilityDescription,
		CivilizationAbilityIcon
		)
SELECT	'CIVILIZATION_CANADA',
		Domain,
		'LEADER_TRUDEAU_NEUTRAL.dds',
		'LEADER_GORGO_BACKGROUND',
		'LEADER_TRUDEAU',
		'LOC_LEADER_TRUDEAU_NAME',
		'ICON_LEADER_TRUDEAU',
		'LOC_TRAIT_CULTURAL_IMPORTS_NAME',
		'LOC_TRAIT_CULTURAL_IMPORTS_DESCRIPTION',
		'ICON_LEADER_TRUDEAU',
		CivilizationName,
		CivilizationIcon,
		'LOC_TRAIT_LEADER_ALLIANCE_BUILDER_NAME',
		'LOC_TRAIT_LEADER_ALLIANCE_BUILDER_DESCRIPTION',
		CivilizationAbilityIcon

FROM Players WHERE CivilizationType = 'CIVILIZATION_CANADA' AND LeaderType = 'LEADER_LAURIER';
--------------------------------------------------------------------------------------------------------------------------
-- PlayerItems
--------------------------------------------------------------------------------------------------------------------------	
INSERT OR REPLACE INTO PlayerItems	
		(CivilizationType,			Domain,	LeaderType,				  Type, Icon, Name, Description, SortIndex)
SELECT	'CIVILIZATION_CANADA',		Domain,	'LEADER_TRUDEAU', Type, Icon, Name, Description, SortIndex
FROM PlayerItems WHERE CivilizationType = 'CIVILIZATION_CANADA' AND LeaderType = 'LEADER_LAURIER';	
--==========================================================================================================================
--==========================================================================================================================

