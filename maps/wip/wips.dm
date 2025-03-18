/datum/map_template/wip
	abstract_type = /datum/map_template/wip
	template_parent_type = /datum/map_template/wip
	template_flags = TEMPLATE_FLAG_CLEAR_CONTENTS | TEMPLATE_FLAG_NO_RUINS

// DESERT
/datum/map_template/wip/desert_oasis
	name = "desert oasis"
	mappaths = list("maps/wip/desert.dmm")

/datum/level_data/player_level/oasis
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/natural/sand
	ambient_light_level = 1
	ambient_light_color = "#f3e6ca"
	strata = /decl/strata/sedimentary
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	daycycle_type = /datum/daycycle
	daycycle_id = "daycycle_oasis"

/obj/abstract/level_data_spawner/oasis
	level_data_type = /datum/level_data/player_level/oasis

/turf/floor/natural/sand/ditch
	color = COLOR_OFF_WHITE
	height = -100

/area/desert
	name = "desert"
	is_outside = TRUE
	area_flags = AREA_FLAG_EXTERNAL | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_IS_NOT_PERSISTENT | AREA_FLAG_IS_BACKGROUND
	sound_env = PLAIN

/area/desert/oasis
	name = "oasis"
	area_flags = AREA_FLAG_EXTERNAL | AREA_FLAG_HIDE_FROM_HOLOMAP | AREA_FLAG_IS_NOT_PERSISTENT

/area/desert/shelter
	name = "shelter"
	is_outside = FALSE
	area_flags = 0
	sound_env = STONEROOM

// DUNGEON
/datum/map_template/wip/dungeon
	name = "dungeon"
	mappaths = list("maps/wip/dungeon.dmm")

/datum/level_data/player_level/dungeon
	use_global_exterior_ambience = FALSE
	base_area = null
	base_turf = /turf/floor/natural/dirt
	strata = /decl/strata/igneous
	exterior_atmosphere = list(
		/decl/material/gas/oxygen =   MOLES_O2STANDARD,
		/decl/material/gas/nitrogen = MOLES_N2STANDARD
	)
	daycycle_type = null

/obj/abstract/level_data_spawner/dungeon
	level_data_type = /datum/level_data/player_level/dungeon

/area/dungeon
	name = "dungeon"
	is_outside = FALSE
	area_flags = AREA_FLAG_HIDE_FROM_HOLOMAP
	sound_env = STONEROOM