_DaisyInitialText::
	text "Hi ",$52,"!"
	line $53," is out at"
	cont "Grandpa's lab."
	done

_DaisyOfferMapText::
	text "Grandpa asked you"
	line "to run an errand?"
	cont "Gee, that's lazy"
	cont "of him!"

	para "Here, this will"
	line "help you!"
	prompt

_GotMapText::
	text $52," got a"
	line "@"
	TX_RAM wcf4b
	text "!@@"

_DaisyBagFullText::
	text "You have too much"
	line "stuff with you."
	done

_DaisyUseMapText::
	text "Use the TOWN MAP"
	line "to find out where"
	cont "you are."
	done

_BluesHouseText2::
	text "Spending time"
	line "with your #MON"
	cont "makes them more"
	cont "friendly to you."
	done

_BluesHouseText3::
	text "A map of KANTO!"
	line "This is useful..."

	para "But would it be"
	line "right to just"
	cont "take it?"
	done
