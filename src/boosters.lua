local oldsmodsinjectitems = SMODS.injectItems

function SMODS.injectItems()

    local g = oldsmodsinjectitems()
    for k, v in pairs(G.P_CENTERS) do
        if v.set == 'Spectral' then
            local description = table.concat(localize({type = 'raw_descriptions', key = v.key, set = 'Spectral', vars = {}}), ' ')
            if description:match('^Add a (.-) ?Seal to (.+) selected cards? in your hand$') then
                SMODS.insert_pool(G.P_CENTER_POOLS['mar_seals'], v)
            end
        end
    end
    return g
end
SMODS.Atlas ({
    key = "Boosters_Atlas",
    path = "Boosters_Atlas.png",
    px = 71,
    py = 95
})
SMODS.ObjectType {
    key = "mar_seals",
    default = "k_mar_booster_group",
    primary_colour = G.C.SET.Spectral,
    secondary_colour = G.C.SECONDARY_SET.Spectral
}

SMODS.ObjectType {
    key = "mar_planets",
    default = "mar_seven_pack",
    primary_colour = G.C.SET.Spectral,
    secondary_colour = G.C.SECONDARY_SET.Spectral,
    cards = {
        c_mar_mediterranean = true,
        c_mar_caribbean = true,
        c_mar_indian = true,
        c_mar_southern = true,
        c_mar_arctic = true,
        c_mar_atlantic = true,
        c_mar_pacific = true,
    }
}

SMODS.ObjectType {
    key = "mar_jokers",
    default = "mar_marine_pack",
    primary_colour = G.C.SET.Joker,
    secondary_colour = G.C.SECONDARY_SET.Joker,
    cards = {
        j_mar_beach = true,
        j_mar_lifesaver = true,
        j_mar_castle = true,
        j_mar_mermaid = true,
        j_mar_marina = true,
        j_mar_pearl = true,
        j_mar_fortress = true,
        j_mar_wave = true,
        j_mar_sushi = true,
        j_mar_Fishing = true,
        j_mar_dive = true,
        j_mar_seal = true,
        j_mar_betta = true,
        j_mar_deep = true,
    }
}


SMODS.Booster {
    key = "sealed_normal_1",
    weight = 0.6,
    kind = 'mar_seals', -- You can also use Spectral if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 0, y = 0 },
    config = { extra = 3, choose = 1 },
    group_key = "mar_sealed_pack",
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3), -- This uses the description key of the booster without the number at the end
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.SPECTRAL_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,

    create_card = function(self, card, i)
        return {
            set = "mar_seals",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = self.key
        }
    end,
}

SMODS.Booster {
    key = "sealed_normal_2",
    weight = 0.6,
    kind = 'mar_seals', -- You can also use Spectral if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 1, y = 0 },
    config = { extra = 3, choose = 1 },
    group_key = "mar_sealed_pack",
    draw_hand = true,
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3), -- This uses the description key of the booster without the number at the end
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.SPECTRAL_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,

    create_card = function(self, card, i)
        return {
            set = "mar_seals",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = self.key
        }
    end,
}

SMODS.Booster {
    key = "sevenseas_normal_1",
    weight = 0.6,
    kind = 'mar_planets', -- You can also use Spectral if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 2, y = 0 },
    config = { extra = 2, choose = 1 },
    group_key = "mar_seven_pack",
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3), -- This uses the description key of the booster without the number at the end
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.SPECTRAL_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,

    create_card = function(self, card, i)
        return {
            set = "mar_planets",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "mar_planets"
        }
    end,
}

SMODS.Booster {
    key = "sevenseas_normal_2",
    weight = 0.6,
    kind = 'mar_planets', -- You can also use Spectral if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 3, y = 0 },
    config = { extra = 2, choose = 1 },
    group_key = "mar_seven_pack",
    loc_vars = function(self, info_queue, card)
        local cfg = (card and card.ability) or self.config
        return {
            vars = { cfg.choose, cfg.extra },
            key = self.key:sub(1, -3), -- This uses the description key of the booster without the number at the end
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.SPECTRAL_PACK)
    end,
    particles = function(self)
        G.booster_pack_sparkles = Particles(1, 1, 0, 0, {
            timer = 0.015,
            scale = 0.1,
            initialize = true,
            lifespan = 3,
            speed = 0.2,
            padding = -1,
            attach = G.ROOM_ATTACH,
            colours = { G.C.WHITE, lighten(G.C.GOLD, 0.2) },
            fill = true
        })
        G.booster_pack_sparkles.fade_alpha = 1
        G.booster_pack_sparkles:fade(1, 0)
    end,

    create_card = function(self, card, i)
        return {
            set = "mar_planets",
            area = G.pack_cards,
            skip_materialize = true,
            soulable = true,
            key_append = "mar_planets"
        }
    end,
}

SMODS.Booster {
    key = "marine_normal_1",
    weight = 0.6,
    kind = 'mar_jokers', -- You can also use Buffoon if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 0, y = 1 },
    config = { extra = 2, choose = 1 },
    group_key = "mar_marine_pack",
    loc_vars = function(self, info_queue, card)
        return { 
        vars = { colours = { HEX('0047AB')} },
        key = self.key:sub(1, -3),
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.BUFFOON_PACK)
    end,
    create_card = function(self, card, i)
        return { set = "mar_jokers", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "mar_jokers" }
    end,
}

SMODS.Booster {
    key = "marine_normal_2",
    weight = 0.6,
    kind = 'mar_jokers', -- You can also use Buffoon if you want it to belong to the vanilla kind
    cost = 4,
    atlas = "Boosters_Atlas",
    pos = { x = 1, y = 1 },
    config = { extra = 2, choose = 1 },
    group_key = "mar_marine_pack",
    loc_vars = function(self, info_queue, card)
        return { 
        vars = { colours = { HEX('0047AB')} },
        key = self.key:sub(1, -3)
        }   
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.BUFFOON_PACK)
    end,
    create_card = function(self, card, i)
        return { set = "mar_jokers", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "mar_jokers" }
    end,
}

SMODS.Booster {
    key = "marine_jumbo_1",
    weight = 0.6,
    kind = 'mar_jokers', -- You can also use Buffoon if you want it to belong to the vanilla kind
    cost = 6,
    atlas = "Boosters_Atlas",
    pos = { x = 2, y = 1 },
    config = { extra = 4, choose = 1 },
    group_key = "mar_marine_pack",
    loc_vars = function(self, info_queue, card)
        return { 
        vars = { colours = { HEX('0047AB')} },
        key = self.key:sub(1, -3), 
        }
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.BUFFOON_PACK)
    end,
    create_card = function(self, card, i)
        return { set = "mar_jokers", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "mar_jokers" }
    end,
}

SMODS.Booster {
    key = "marine_mega_1",
    weight = 0.3,
    kind = 'mar_jokers', -- You can also use Buffoon if you want it to belong to the vanilla kind
    cost = 8,
    atlas = "Boosters_Atlas",
    pos = { x = 3, y = 1 },
    config = { extra = 4, choose = 2 },
    group_key = "mar_marine_pack",
    loc_vars = function(self, info_queue, card)
        return { 
        vars = { colours = { HEX('0047AB')} },
        key = self.key:sub(1, -3),
        }
        
    end,
    ease_background_colour = function(self)
        ease_background_colour_blind(G.STATES.BUFFOON_PACK)
    end,
    create_card = function(self, card, i)
        return { set = "mar_jokers", area = G.pack_cards, skip_materialize = true, soulable = true, key_append = "mar_jokers" }
    end,
}