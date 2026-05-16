return {
	misc = {
		v_text = {
			ch_c_mar_waters = {
				"Enfrentate a Ciegas con {C:spectral,E:2}tematica cuática{}",
			},
		},
		challenge_names = {
			c_mar_waters = "Aguas Infestadas",
		},
		dictionary = {
			mar_seven_pack = "Paquete de los 7 Mares",
			mar_sealed_pack = "Paquete Sellado",
			mar_marine_pack = "Paquete Marino",
		},
		labels = {
			mar_devour_seal = "Sello corriente",
			mar_grey_seal = "Sello gris",
		},
	},
	descriptions = {
		Back = {
		    b_mar_water = {
		        name = "Baraja Acuática",
		        text = {
		            "Comienza la partida con",
		            "el vale {C:blue,T:v_magic_trick}Truco de Magia",
		            "y una copia de",
		            "{C:red,T:c_deja_vu}Deja Vu{} y {C:spectral,T:c_trance}Trance{}"
		        },
		        unlock = {
		            "Ten al menos",
		            "{C:attention}16{} cartas",
		            "con un {C:spectral}Sello{}"
		        }
		    }
	    },
		Tag = {
			tag_mar_marine = {
				name = "Etiqueta marina",
				text = {
					"La tienda tiene un",
					"comodín de",
					"{C:spectral}Tonterías Marinas",
					"gratis"
				},
			},
		},
		Blind = {
			bl_mar_sea = {
				name = "Cobalt Sea",
				text = {
					"Después de jugar una mano, todas las mejoras",
					"y sellos de cartas en",
					"la mano son arrastradas por la corriente",
				},
			},
			bl_mar_shark = {
				name = "The Shark",
				text = {
					"Cartas jugadas que anotan",
					"tienen un {C:green}#1# en 5{} de posibilidades",
					"de ser destruídas",
				},
			},
			bl_mar_orca = {
				name = "The Orca",
				text = {
					"Todas las cartas",
					"con un sello son",
					"debilitadas",
				},
			},
		},
		Other = {
			p_mar_marine_normal = {
				name = "Paquete Marino",
				text = {
					"Elige {C:attention}1{} de hasta",
					"{C:attention}2{C:joker} Comodines",
					"de{V:1} Tonterías Marinas",
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
				name = "Presión",
				text = {
					"Reduce un porcentaje",
					"del requerimiento de la Ciega",
					"equivalente al número de {C:dark_edition}Presión{}",
				},
			},
			p_mar_marine_jumbo = {
				name = "Paquete Marino Jumbo",
				text = {
					"Elige {C:attention}1{} de hasta",
					"{C:attention}4{C:joker} Comodines",
					"de{V:1} Tonterías Marinas",
				},
			},
			mar_devour_seal = {
				label = "Sello corriente",
				name = "Sello corriente",
				text = {
					"Descarta para eliminar la",
					"siguiente {C:attention}carta {C:attention,E:1}en la mano{}",
					"a la izquierda de esta",
					"{C:inactive,s:0.8}(Arrastra para acomodar{C:inactive,s:0.8})",
				},
			},
			mar_grey_seal = {
				label = "Sello gris",
				name = "Sello gris",
				text = {
					"Crea una carta de {C:spectral}Sello",
					"al {C:attention}anotar",
				},
			},
			p_mar_sealed_normal = {
				name = "Paquete sellado",
				text = {
					"Elige {C:attention}1{} de hasta",
					"{C:attention}3{} cartas de {C:spectral}Sellos",
					"para ser usados inmediatamente",
				},
			},
			p_mar_sevenseas_normal = {
				name = "Paquete de los 7 Mares",
				text = {
					"Elige {C:attention}1{} de hasta",
					"{C:attention}2{} cartas de {C:planet}Planeta Marino",
					"para ser usados inmediatamente",
				},
			},
			p_mar_marine_mega = {
				name = "Paquete Marino Mega",
				text = {
					"Elige {C:attention}2{} de hasta",
					"{C:attention}4{C:joker} Comodines",
					"de{V:1} Tonterías Marinas",
				},
			},
		},
		Joker = {
			j_mar_marina = {
				name = "Marina",
				text = {
					"Cada carta en tu",
					"area de {C:attention}Consumibles{}",
					"otorga {C:chips}+40{} Fichas",
				},
			},
			j_mar_seal = {
				name = "Foca",
				text = {
					"Otorga {C:blue}+#1#{} Fichas",
					"por cada {C:attention}carta{} con un",
					"{C:spectral}Sello{} en tu {C:attention}Baraja Completa{}",
					"{C:inactive}(Actualmente {C:blue}+#2#{C:inactive})",
				},
			},
			j_mar_castle = {
				name = "Castillo de Arena",
				text = {
					"{C:chips}+#1#{} Fichas, obtiene {C:chips}+1{}",
					"por mano jugada.",
					"{C:green}#2# en #3#{} probabilidades",
					"de que la carta se destruya",
					"al final de la ronda",
				},
			},
			j_mar_dive = {
				unlock = {
					"Derrota a una Ciega jefe",
					"en tu {C:attention}última mano{}",
				},
				name = "Inmersión",
				text = {
					"Ejerce {X:dark_edition,C:white}10psi{} de Presión",
					"si la mano jugada contiene",
					"{C:attention}5{} cartas anotadas",
				},
			},
			j_mar_fortress = {
				name = "Fortaleza de Areina",
				text = {
					"{X:chips,C:white}X#1#{} Fichas, obtiene {X:chips,C:white}X0.05{}",
					"por mano jugada.",
					"{C:green}#2# in #3#{} probabilidades",
					"de que la carta se destruya",
					"al final de la ronda",
				},
			},
			j_mar_beach = {
				name = "Joker Playero",
				text = {
					"{C:chips}+75{} Fichas",
				},
			},
			j_mar_sushi = {
				name = "Sushi",
				text = {
					"Cartas jugadas ganan",
					"{C:money}$1{} al anotar por las",
					"siguientes {C:attention}#1#{} manos",
				},
			},
			j_mar_wave = {
				name = "Ola",
				text = {
					"Reactiva {C:attention}cada dos{}",
					"cartas jugadas al anotar",
				},
			},
			j_mar_mermaid = {
				name = "Sirena",
				text = {
					"{C:chips}+20{} Fichas por cada carta",
					"{C:spectral}Espectral{} usada en esta partida",
					"{C:inactive}(Actualmente {C:chips}+#1#{C:inactive})",
					"{C:inactive,s:0.8}(Arte hecho por Inky){}",
				},
			},
			j_mar_lifesaver = {
				name = "Salva Vidas",
				text = {
					"Vende esta carta para",
					"descartar todas las {C:attention}cartas{}",
					"no seleccionadas",
					"{C:inactive,s:0.8}(Arte hecho por Edward Robinson)",
				},
			},
			j_mar_niko = {
				unlock = {
					"{E:1,s:1.3}?????",
				},
				name = "Niko",
				text = {
					"Reactiva todas la cartas",
					"que contienen un {C:spectral,T:red_seal}Sello{}",
					"{C:attention}2{} veces adicionales",
				},
			},
			j_mar_deep = {
				unlock = {
					"Vence el Reto {C:spectral,E:2}'Aguas Infestadas'",
				},
				name = "Las Profundidades",
				text = {
					"Cada Comodín {C:dark_edition}Negativo{}",
					"ejerce {X:dark_edition,C:white}10psi{} de Presión",
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
					"Reduce tu tamaño de mano",
					"a 6 cartas",
				},
				name = "Betta splendens",
				text = {
					"{X:chips,C:white}X1.5{} Fichas por cada",
					"tamaño de mano por debajo de {C:attention}8{}",
					"{C:inactive}(Actualmente {X:chips,C:white}X#1#{C:inactive})",
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
				name = "Perla",
				text = {
					"Gana {C:money}dinero{} equivalente",
					"al nivel de la última",
					"{C:attention}mano de póker{} jugada",
					"al final de la ronda",
				},
			},
			j_mar_Fishing = {
				unlock = {
					"Dispone de al menos {E:1,C:attention}2",
					"Comodines con {C:green}Probabilidad{}",
				},
				name = "Hora de pescar",
				text = {
					"Este Comodín obtiene {C:chips}+4{} Fichas",
					"y gana {C:money}$2{} cada vez que una",
					"{C:green,E:1}probabilidad{} ocurre.",
					"{C:inactive}(Actualmente {C:chips}+#1#{C:inactive} Fichas)",
				},
			},
		},
		Planet = {
			c_mar_caribbean = {
				name = "Mar Caribeño",
				text = {
					"Mejora {C:attention}Par{}",
					"y {C:attention}Doble Par{}",
					"por {C:attention}1 nivel{}",
				},
			},
			c_mar_mediterranean = {
				name = "Mar Mediterraneo",
				text = {
					"Mejora {C:attention}Carta más Alta{}",
					"por {C:attention}2 niveles{}",
				},
			},
			c_mar_indian = {
				name = "Océano Índico",
				text = {
					"Mejora {C:attention}Tercia{}",
					"y {C:attention}Póker{}",
					"por {C:attention}1 nivel{}",
				},
			},
			c_mar_southern = {
				name = "Océano Austral",
				text = {
					"Mejora {C:attention}Color{}",
					"y {C:attention}Escalera Corrida{}",
					"por {C:attention}1 nivel{}",
				},
			},
			c_mar_arctic = {
				name = "Océano Artico",
				text = {
					"Mejora {C:attention}Escalera{}",
					"y {C:attention}Escalera Corrida{}",
					"por {C:attention}1 nivel{}",
				},
			},
			c_mar_atlantic = {
				name = "Océano Atlántico",
				text = {
					"Mejora {C:attention}Full House{}",
					"and {C:attention}Full de Color{}",
					"por {C:attention}1 nivel{}",
				},
			},
			c_mar_pacific = {
				name = "Océano Pacífico",
				text = {
					"Mejora {C:attention}Quintilla{}",
					"y {C:attention}Cinco de Color{}",
					"por {C:attention}1 nivel{}",
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