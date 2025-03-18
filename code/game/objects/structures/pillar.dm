/obj/structure/pillar
	name       = "pillar"
	desc       = "A tall, narrow structure, usually used to hold up the roof."
	icon       = 'icons/obj/structures/pillars/pillar_square.dmi'
	icon_state = ICON_STATE_WORLD
	anchored   = TRUE
	opacity    = TRUE
	density    = TRUE
	material   = /decl/material/solid/stone/marble
	material_alteration = MAT_FLAG_ALTERATION_ALL

/obj/structure/pillar/narrow
	icon = 'icons/obj/structures/pillars/pillar_narrow.dmi'

/obj/structure/pillar/round
	icon = 'icons/obj/structures/pillars/pillar_round.dmi'

/obj/structure/pillar/triad
	icon = 'icons/obj/structures/pillars/pillar_triad.dmi'

#define PILLAR_STONE_SUBTYPE(STONE) \
/obj/structure/pillar/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/pillar/narrow/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/pillar/round/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/pillar/triad/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color}

PILLAR_STONE_SUBTYPE(basalt)
PILLAR_STONE_SUBTYPE(granite)
PILLAR_STONE_SUBTYPE(sandstone)
#undef PILLAR_STONE_SUBTYPE