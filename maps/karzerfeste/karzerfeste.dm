#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/species/drakes/_drakes.dme" // include before _fantasy.dme so overrides work
	#include "../../mods/content/fantasy/_fantasy.dme"
	#include "../../mods/pyrelight/_pyrelight.dme" // include after _fantasy.dme so overrides work

	#include "areas/_area.dm"
	#include "jobs/_job.dm"
	#include "levels/_level.dm"
	#include "levels/strata.dm"
	#include "outfits/_outfit.dm"

	#include "karzerfeste_currency.dm"
	#include "karzerfeste_events.dm"
	#include "karzerfeste_map.dm"
	#include "karzerfeste_skills.dm"
	#include "karzerfeste_testing.dm"
	#include "karzerfeste_turfs.dm"

	#define USING_MAP_DATUM /datum/map/karzerfeste

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Berg Karzerfeste
#endif
