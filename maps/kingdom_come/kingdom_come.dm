#if !defined(USING_MAP_DATUM)

	#include "../../mods/content/matchmaking/_matchmaking.dme"
	#include "../../mods/content/mouse_highlights/_mouse_highlight.dme"
	#include "../../mods/content/scaling_descriptors.dm"
	#include "../../mods/species/drakes/_drakes.dme" // include before _fantasy.dme so overrides work
	#include "../../mods/content/anima/_anima.dme"
	#include "../../mods/content/fantasy/_fantasy.dme"
	#include "../../mods/pyrelight/_pyrelight.dme" // include after _fantasy.dme so overrides work

	#include "areas/_area.dm"
	#include "jobs/_job.dm"
	#include "levels/_level.dm"
	#include "levels/strata.dm"
	#include "outfits/_outfit.dm"

	#include "kingdom_come_currency.dm"
	#include "kingdom_come_events.dm"
	#include "kingdom_come_map.dm"
	#include "kingdom_come_skills.dm"
	#include "kingdom_come_testing.dm"
	#include "kingdom_come_turfs.dm"

	#include "kingdom_come-town.dmm"

	#define USING_MAP_DATUM /datum/map/kingdom_come

#elif !defined(MAP_OVERRIDE)
	#warn A map has already been included, ignoring Nordfeste
#endif
