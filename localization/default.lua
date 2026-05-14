return {
	descriptions = {
		Back = {
		    b_mar_water = {
		        name = "Water Deck",
		        text = {
		            "Start run with the",
		            "{C:blue,T:v_magic_trick}#1#{} voucher",
		            "and a copy of",
		            "{C:red,T:c_deja_vu}Deja Vu{} and {C:spectral,T:c_trance}Trance{}"
		        },
		        unlock = {
		            "Have at least",
		            "{C:attention}16{} cards",
		            "with a {C:spectral}seal{}"
		        }
		    }
	    },
		Blind = {

		},
		Tag ={
			tag_mar_marine = {
				name = "Marine Tag",
				text = {
				"Shop has a free",
				"{C:spectral}Marine Foolin'",
				"Joker"
				}
			}
		},
		Joker = {
			j_mar_niko = {
				name = "Niko",
				text = {
					"Retrigger all cards",
					"that have a {C:spectral,T:red_seal}Seal{}",
					"{C:attention}2{} additional times"
				},
				unlock = {
                    "{E:1,s:1.3}?????",
                },
			},
			j_mar_Fishing = {
		        name = "Time go Fishing",
		        text = {
		            "This Joker gains {C:chips}+4{} Chips",
		            "and earns {C:money}$2{} every time a",
		            "{C:attention}listed{} {C:green,E:1}probability{} is triggered.",
		            "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)"
		        },
		        unlock = {
                    "Have at least {E:1,C:attention}2",
                    "Jokers with {C:green}Probability{}",
                },			
			},
			j_mar_betta = {
		        name = "Betta splendens",
		        text = {
		            "{X:chips,C:white}X1.5{} Chips for each",
		            "hand size below {C:attention}8{}",
		            "{C:inactive}(Currently {X:chips,C:white}X#1#{C:inactive})"
		        },
		        unlock = {
		        	"Reduce your hand size", 
		        	"down to six cards"
		        }		
			},
		    j_mar_seal = {
		        name = "Seal",
		        text = {
		            "Gives {C:blue}+#1#{} Chips",
		            "for each {C:attention}playing card{} with a",
		            "{C:spectral}seal{} in your {C:attention}full deck{}",
		            "{C:inactive}(Currently {C:blue}+#2#{C:inactive})"
		        }
		    },
		    j_mar_deep = {
		        name = "The Deep",
		        text = {
		            "{C:dark_edition}Negative{} Jokers each",
		            "exert {X:dark_edition,C:white}10psi{} Pressure"
		        },
		        unlock = {
		        	"Beat the {C:spectral,E:2}'Infested Waters'{} Challenge"
		        }
		        
		    },
		    j_mar_dive = {
		        name = "Dive",
		        text = {
		            "Exerts {X:dark_edition,C:white}10psi{} Pressure",
		            "if played hand contains",
		            "{C:attention}5{} scoring cards"
		        },
		        unlock = {
		        	"Defeat a Boss Blind",
		        	"on your {C:attention}Last Hand{}"
		        }
		    },
		    j_mar_castle = {
		    	name = "Sand Castle",
		    	text = {
		    		"{C:chips}+#1#{} Chips, gains {C:chips}+1{}",
		    		"per hand played.",
		    		"{C:green}1 in 6{} chance this", 
		    		"card is destroyed", 
		    		"at end of round"
		    	}
		    },
		    j_mar_fortress = {
		    	name = "Sand Fortress",
		    	text = {
		    		"{X:chips,C:white}X#1#{} Chips, gains {X:chips,C:white}X0.05{}",
		    		"per hand played.",
		    		"{C:green}1 in 1000{} chance this", 
		    		"card is destroyed", 
		    		"at end of round"
		    	}
		    },
		    j_mar_marina = {
		    	name = "Marina",
		    	text = {
		    		"Each card in your",
		    		"{C:attention}Consumable{} area",
		    		"gives {C:chips}+40{} Chips"
		    	}
		    },
		    j_mar_pearl = {
		    	name = "Pearl",
		    	text = {
		    		"Earn {C:money}money{} equivalent",
		    		"to the level of the",
		    		"last played {C:attention}poker hand",
		    		"at end of round"
		    	}
		    }
		},
		Other = {
			p_mar_sealed_normal = {
				name = "Sealed Pack",
		        text = {
		            "Choose {C:attention}1{} of up to",
		            "{C:attention}3{C:spectral} Seal{} cards to",
		            "be used immediately"
		        }
		    },
		    p_mar_sevenseas_normal = {
				name = "Seven Seas Pack",
		        text = {
		            "Choose {C:attention}1{} of up to",
		            "{C:attention}2{C:spectral} Sea Planet{} cards to",
		            "be used immediately"
		        }
		    },
		    p_mar_marine_normal = {
		    	name = "Marine Pack",
		    	text = {
		    		"Choose {C:attention}1{} of up to",
		    		"{C:attention}2{V:1}Marine Foolin'",
		    		"{C:joker}Joker{} cards"
		    	}
		    },
		    p_mar_marine_jumbo = {
		    	name = "Marine Jumbo Pack",
		    	text = {
		    		"Choose {C:attention}1{} of up to",
		    		"{C:attention}4{V:1}Marine Foolin'",
		    		"{C:joker}Joker{} cards"
		    	}
		    },
		    p_mar_marine_mega = {
		    	name = "Marine Mega Pack",
		    	text = {
		    		"Choose {C:attention}2{} of up to",
		    		"{C:attention}4{V:1}Marine Foolin'",
		    		"{C:joker}Joker{} cards"
		    	}
		    },
		    mar_pressure_desc = {
		    	name = "Pressure",
		    	text = {
		    		"Reduce a percentage",
		    		"of the {C:blind}Blind{}",
		    		"requirement equal to",
		    		"the amount of {C:dark_edition}Pressure{}"
		    	}
		    }
		},
		Planet = {
			c_mar_mediterranean = {
				name = "Mediterranean Sea",
				text = {
					"Upgrade {C:attention}High Card{}",
					"by {C:attention}2 levels{}"
				}
			},
			c_mar_caribbean = {
				name = "Caribbean Sea",
				text = {
					"Upgrade {C:attention}Pair{}",
					"and {C:attention}Two Pair{}",
					"by {C:attention}1 level{}"
				}
			},
			c_mar_indian = {
				name = "Indian Ocean",
				text = {
					"Upgrade {C:attention}Three of a Kind{}",
					"and {C:attention}Four of a Kind{}",
					"by {C:attention}1 level{}"
				}
			},
			c_mar_southern = {
				name = "Southern Ocean",
				text = {
					"Upgrade {C:attention}Flush{}",
					"and {C:attention}Straight Flush{}",
					"by {C:attention}1 level{}"
				}
			},
			c_mar_arctic = {
				name = "Arctic Ocean",
				text = {
					"Upgrade {C:attention}Straight{}",
					"and {C:attention}Straight Flush{}",
					"by {C:attention}1 level{}"
				}
			},
			c_mar_atlantic = {
				name = "Atlantic Ocean",
				text = {
					"Upgrade {C:attention}Full House{}",
					"and {C:attention}Flush House{}",
					"by {C:attention}1 level{}"
				}
			},
			c_mar_pacific = {
				name = "Pacific Ocean",
				text = {
					"Upgrade {C:attention}Five of a Kind{}",
					"and {C:attention}Flush Five{}",
					"by {C:attention}1 level{}"
				}
			}
		},
		Spectral = {

		},
	},
	misc = {
		dictionary = {
			mar_sealed_pack = "Sealed Pack",
			mar_seven_pack = "Seven Seas Pack",
			mar_marine_pack = "Marine Pack"
		},
		challenge_names = {
			c_mar_waters = "Infested Waters"
		},
		v_text = {
			ch_c_mar_waters = {"Fight against {C:spectral,E:2}water themed{} Blinds"}
		}
	}
}