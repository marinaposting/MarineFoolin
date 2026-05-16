return {
	misc = {
		v_text = {
			ch_c_mar_waters = {
				"Fight against {C:spectral,E:2}water themed{} Blinds",
			},
		},
		challenge_names = {
			c_mar_waters = "Infested Waters",
		},
		dictionary = {
			mar_seven_pack = "Seven Seas Pack",
			mar_sealed_pack = "Sealed Pack",
			mar_marine_pack = "Marine Pack",
		},
		labels = {
			mar_devour_seal = "Riptide Seal",
			mar_grey_seal = "Grey Seal",
		},
	},
	descriptions = {
		Back = {
			b_mar_water = {
				unlock = {
					"Have at least",
					"{C:attention}16{} cards",
					"with a {C:spectral}seal{}",
				},
				name = "Water Deck",
				text = {
					"Start run with the",
					"{C:blue,T:v_magic_trick}#1#{} voucher",
					"and a copy of",
					"{C:red,T:c_deja_vu}Deja Vu{} and {C:spectral,T:c_trance}Trance{}",
				},
			},
		},
		Tag = {
			tag_mar_marine = {
				name = "Marine Tag",
				text = {
					"Shop has a free",
					"{C:spectral}Marine Foolin'",
					"Joker",
				},
			},
		},
		Blind = {
			bl_mar_sea = {
				name = "Cobalt Sea",
				text = {
					"After play, all enhancements",
					"and seals from cards held",
					"in hand are washed away",
				},
			},
			bl_mar_shark = {
				name = "The Shark",
				text = {
					"Played scoring cards",
					"have a {C:green}#1# in 5{} chance",
					"to be destroyed",
				},
			},
			bl_mar_orca = {
				name = "The Orca",
				text = {
					"All playing cards",
					"with a seal are",
					"debuffed",
				},
			},
		},
		Other = {
			p_mar_marine_normal = {
				name = "Marine Pack",
				text = {
					"Choose {C:attention}1{} of up to",
					"{C:attention}2{V:1} Marine Foolin'",
					"{C:joker}Joker{} cards",
				},
			},
			-- "mdev_oil_spill" = {
			-- 	"name" = "Oil Spill",
			-- 	"text" = {
			-- 		"Release {X:dark_edition,C:white}5psi{}",
			-- 		"on {C:attention}First Hand{} of round",
			-- 	},
			-- },
			mar_pressure_desc = {
				name = "Pressure",
				text = {
					"Reduce a percentage",
					"of the {C:blind}Blind{}",
					"requirement equal to",
					"the amount of {C:dark_edition}Pressure{}",
				},
			},
			p_mar_marine_jumbo = {
				name = "Marine Jumbo Pack",
				text = {
					"Choose {C:attention}1{} of up to",
					"{C:attention}4{V:1} Marine Foolin'",
					"{C:joker}Joker{} cards",
				},
			},
			mar_devour_seal = {
				label = "Riptide Seal",
				name = "Riptide Seal",
				text = {
					"Discard to destroy the",
					"next {C:attention,E:1}held in hand{}",
					"{C:attention}playing card{} to the left",
					"{C:inactive,s:0.8}(Drag to rearrange{C:inactive,s:0.8})",
				},
			},
			mar_grey_seal = {
				label = "Grey Seal",
				name = "Grey Seal",
				text = {
					"Create a {C:spectral}Seal",
					"card when {C:attention}played",
				},
			},
			p_mar_sealed_normal = {
				name = "Sealed Pack",
				text = {
					"Choose {C:attention}1{} of up to",
					"{C:attention}3{C:spectral} Seal{} cards to",
					"be used immediately",
				},
			},
			p_mar_sevenseas_normal = {
				name = "Seven Seas Pack",
				text = {
					"Choose {C:attention}1{} of up to",
					"{C:attention}2{C:spectral} Sea Planet{} cards to",
					"be used immediately",
				},
			},
			p_mar_marine_mega = {
				name = "Marine Mega Pack",
				text = {
					"Choose {C:attention}2{} of up to",
					"{C:attention}4{V:1} Marine Foolin'",
					"{C:joker}Joker{} cards",
				},
			},
		},
		Joker = {
			j_mar_marina = {
				name = "Marina",
				text = {
					"Each card in your",
					"{C:attention}Consumable{} area",
					"gives {C:chips}+40{} Chips",
				},
			},
			j_mar_seal = {
				name = "Seal",
				text = {
					"Gives {C:blue}+#1#{} Chips",
					"for each {C:attention}playing card{} with a",
					"{C:spectral}seal{} in your {C:attention}full deck{}",
					"{C:inactive}(Currently {C:blue}+#2#{C:inactive})",
				},
			},
			j_mar_castle = {
				name = "Sand Castle",
				text = {
					"{C:chips}+#1#{} Chips, gains {C:chips}+1{}",
					"per hand played.",
					"{C:green}#2# in #3#{} chance this",
					"card is destroyed",
					"at end of round",
				},
			},
			j_mar_dive = {
				unlock = {
					"Defeat a Boss Blind",
					"on your {C:attention}Last Hand{}",
				},
				name = "Dive",
				text = {
					"Exerts {X:dark_edition,C:white}10psi{} Pressure",
					"if played hand contains",
					"{C:attention}5{} scoring cards",
				},
			},
			j_mar_fortress = {
				name = "Sand Fortress",
				text = {
					"{X:chips,C:white}X#1#{} Chips, gains {X:chips,C:white}X0.05{}",
					"per hand played.",
					"{C:green}#2# in #3#{} chance this",
					"card is destroyed",
					"at end of round",
				},
			},
			j_mar_beach = {
				name = "Beach Joker",
				text = {
					"{C:chips}+75{} Chips",
				},
			},
			j_mar_sushi = {
				name = "Sushi",
				text = {
					"Played cards earn",
					"{C:money}$1{} for the",
					"next {C:attention}#1#{} hands",
				},
			},
			j_mar_wave = {
				name = "Wave",
				text = {
					"Retrigger {C:attention}every other{}",
					"played card used in scoring",
				},
			},
			j_mar_mermaid = {
				name = "Mermaid",
				text = {
					"{C:chips}+20{} Chips per {C:spectral}spectral{}",
					"cards used this run",
					"{C:inactive}(Currently {C:chips}+#1#{C:inactive})",
					"{C:inactive,s:0.8}(art by Inky){}",
				},
			},
			j_mar_lifesaver = {
				name = "Life Buoy",
				text = {
					"Sell this card to",
					"discard all non-selected",
					"{C:attention}playing cards{}",
					"{C:inactive,s:0.8}(art by edward robinson{C:inactive,s:0.8})",
				},
			},
			j_mar_niko = {
				unlock = {
					"{E:1,s:1.3}?????",
				},
				name = "Niko",
				text = {
					"Retrigger all cards",
					"that have a {C:spectral,T:red_seal}Seal{}",
					"{C:attention}2{} additional times",
				},
			},
			j_mar_deep = {
				unlock = {
					"Beat the {C:spectral,E:2}'Infested Waters'{} Challenge",
				},
				name = "The Deep",
				text = {
					"{C:dark_edition}Negative{} Jokers each",
					"exert {X:dark_edition,C:white}10psi{} Pressure",
				},
			},
			-- j_mdev_oil = {
			-- 	name = "Oil Spill",
			-- 	text = {
			-- 		"Release {X:dark_edition,C:white}5psi{}",
			-- 		"on {C:attention}First Hand{} of round",
			-- 	},
			-- },
			j_mar_betta = {
				unlock = {
					"Reduce your hand size",
					"down to six cards",
				},
				name = "Betta splendens",
				text = {
					"{X:chips,C:white}X1.5{} Chips for each",
					"hand size below {C:attention}8{}",
					"{C:inactive}(Currently {X:chips,C:white}X#1#{C:inactive})",
				},
			},
			-- j_mdev_rig = {
			-- 	name = "Oil Rig",
			-- 	text = {
			-- 		{
			-- 			"{s:0.9}Lose {C:money,s:0.9}-$#2#{s:0.9} at end of round.",
			-- 			"{s:0.9}When {C:attention,s:0.9}Blind{s:0.9} is selected, Increase",
			-- 			"{s:0.9}amount lost by {C:money,s:0.9}$1{} and gain {X:chips,C:white,s:0.9}X0.5{s:0.9} Chips.",
			-- 			"{C:inactive,s:0.8}(Currently {X:chips,C:white,s:0.8}X#1#{C:inactive,s:0.8})",
			-- 		},
			-- 		{
			-- 			"{s:0.9}If debt is below {C:red,s:0.9}$0{s:0.9} at start of round,",
			-- 			"{s:0.9}destroy this card and get a {C:dark_edition,s:0.9}Negative",
			-- 			"{s:0.9}Eternal {C:attention}Oil Spill{s:0.9} per debt below {C:red,s:0.9}$0",
			-- 			"{C:inactive,s:0.8}(Maximum 4 Oil Spills)",
			-- 		},
			-- 	},
			-- },
			j_mar_pearl = {
				name = "Pearl",
				text = {
					"Earn {C:money}money{} equivalent",
					"to the level of the",
					"last played {C:attention}poker hand",
					"at end of round",
				},
			},
			j_mar_Fishing = {
				unlock = {
					"Have at least {E:1,C:attention}2",
					"Jokers with {C:green}Probability{}",
				},
				name = "Time go Fishing",
				text = {
					"This Joker gains {C:chips}+4{} Chips",
					"and earns {C:money}$2{} every time a",
					"{C:attention}listed{} {C:green,E:1}probability{} is triggered.",
					"{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)",
				},
			},
		},
		Planet = {
			c_mar_caribbean = {
				name = "Caribbean Sea",
				text = {
					"Upgrade {C:attention}Pair{}",
					"and {C:attention}Two Pair{}",
					"by {C:attention}1 level{}",
				},
			},
			c_mar_mediterranean = {
				name = "Mediterranean Sea",
				text = {
					"Upgrade {C:attention}High Card{}",
					"by {C:attention}2 levels{}",
				},
			},
			c_mar_indian = {
				name = "Indian Ocean",
				text = {
					"Upgrade {C:attention}Three of a Kind{}",
					"and {C:attention}Four of a Kind{}",
					"by {C:attention}1 level{}",
				},
			},
			c_mar_southern = {
				name = "Southern Ocean",
				text = {
					"Upgrade {C:attention}Flush{}",
					"and {C:attention}Straight Flush{}",
					"by {C:attention}1 level{}",
				},
			},
			c_mar_arctic = {
				name = "Arctic Ocean",
				text = {
					"Upgrade {C:attention}Straight{}",
					"and {C:attention}Straight Flush{}",
					"by {C:attention}1 level{}",
				},
			},
			c_mar_atlantic = {
				name = "Atlantic Ocean",
				text = {
					"Upgrade {C:attention}Full House{}",
					"and {C:attention}Flush House{}",
					"by {C:attention}1 level{}",
				},
			},
			c_mar_pacific = {
				name = "Pacific Ocean",
				text = {
					"Upgrade {C:attention}Five of a Kind{}",
					"and {C:attention}Flush Five{}",
					"by {C:attention}1 level{}",
				},
			},
		},
		Spectral = {
			c_mar_devour_spectral = {
				name = "Devour",
				text = {
					"Add a {V:1}Riptide Seal{}",
					"to {C:attention}1{} selected",
					"card in your hand",
				},
			},
			c_mar_galumph_spectral = {
				name = "Galumph",
				text = {
					"Add a {V:1}Grey Seal{}",
					"to {C:attention}1{} selected",
					"card in your hand",
				},
			}
		}
	}
}