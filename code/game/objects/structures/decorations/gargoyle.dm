/obj/structure/decoration/gargoyle
	name     = "gargoyle"
	desc     = "A leering statue of a monstrous gargoyle."
	icon     = 'icons/obj/structures/decorations/gargoyle.dmi'
	material = /decl/material/solid/stone/basalt
	color    = /decl/material/solid/stone/basalt::color

/obj/structure/decoration/gargoyle/plinth
	icon     = 'icons/obj/structures/decorations/gargoyle_plinth.dmi'

/obj/structure/decoration/gargoyle/standing
	icon     = 'icons/obj/structures/decorations/gargoyle_standing.dmi'

/obj/structure/decoration/gargoyle/random/Initialize(ml, _mat, _reinf_mat)
	icon = pick(list(
		'icons/obj/structures/decorations/gargoyle.dmi',
		'icons/obj/structures/decorations/gargoyle_plinth.dmi',
		'icons/obj/structures/decorations/gargoyle_standing.dmi'
	))
	. = ..()

#define GARGOYLE_STONE_SUBTYPE(STONE) \
/obj/structure/decoration/gargoyle/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/decoration/gargoyle/plinth/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/decoration/gargoyle/standing/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color} \
/obj/structure/decoration/gargoyle/random/##STONE {material = /decl/material/solid/stone/##STONE; color = /decl/material/solid/stone/##STONE::color}

GARGOYLE_STONE_SUBTYPE(marble)
GARGOYLE_STONE_SUBTYPE(granite)
GARGOYLE_STONE_SUBTYPE(sandstone)
#undef GARGOYLE_STONE_SUBTYPE