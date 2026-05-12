SMODS.Atlas ({
    key = "Planets-Atlas",
    path = "Planets-Atlas.png",
    px = 71,
    py = 95
})

SMODS.Consumable {
	key = "mediterranean",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 0, y = 0},
	cost = 5,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"High Card"}, level_up = 2, from = card})
	end
}


SMODS.Consumable {
	key = "caribbean",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 1, y = 0},
	cost = 5,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Pair", "Two Pair" }, level_up = 1, from = card})
	end
}

SMODS.Consumable {
	key = "indian",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 2, y = 0},
	cost = 5,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Three of a Kind", "Four of a Kind" }, level_up = 1, from = card})
	end
}

SMODS.Consumable {
	key = "southern",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 3, y = 0},
	cost = 5,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Flush", "Straight Flush" }, level_up = 1, from = card})
	end
}

SMODS.Consumable {
	key = "arctic",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 4, y = 0},
	cost = 5,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Straight", "Straight Flush" }, level_up = 1, from = card})
	end
}

SMODS.Consumable {
	key = "atlantic",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 5, y = 0},
	cost = 5,
	weight = 6,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Full House", "Flush House" }, level_up = 1, from = card})
	end
}

SMODS.Consumable {
	key = "pacific",
	set = "Planet",
	atlas = "Planets-Atlas",
	pos = {x = 6, y = 0},
	cost = 5,
	weight = 4,
	in_pool = function(self, args)
    	return args and args.source == "mar_planets"
	end,
    can_use = function(self, card)
        return true
    end,
	use = function(self, card, area)
		SMODS.upgrade_poker_hands({hands = {"Five of a Kind", "Flush Five" }, level_up = 1, from = card})
	end
}



