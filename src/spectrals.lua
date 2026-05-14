SMODS.Atlas ({
    key = "devour",
    path = "devour.png",
    px = 71,
    py = 95,
})
SMODS.Atlas ({
    key = "galumph",
    path = "galumph.png",
    px = 71,
    py = 95,
})

--DEVOUR SPECTRAL
SMODS.Consumable {
    key = 'devour_spectral',
    set = 'Spectral',
    loc_txt = {
        name = "Devour",
        text = {
            "Add a {V:1}Riptide Seal{}",
            "to {C:attention}1{} selected",
            "card in your hand"
        },

    },
    unlocked = true,
    discovered = false,
    atlas = "devour",
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_SEALS[card.ability.extra.seal]
        return { vars = { colours = { HEX('0047AB')} } }
    end,
    config = { extra = { seal = 'mar_devour' }, max_highlighted = 1 },
    use = function(self, card, area, copier)
        local conv_card = G.hand.highlighted[1]
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                conv_card:set_seal(card.ability.extra.seal, nil, true)
                return true
            end
        }))

        delay(0.5)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,
}

--GALUMPH SPECTRAL
SMODS.Consumable {
    key = 'galumph_spectral',
    set = 'Spectral',
    loc_txt = {
        name = "Galumph",
        text = {
            "Add a {V:1}Grey Seal{}",
            "to {C:attention}1{} selected",
            "card in your hand"
        },

    },
    unlocked = true,
    discovered = false,
    atlas = "galumph",
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = G.P_SEALS[card.ability.extra.seal]
        return { vars = { colours = { HEX('8a9097')} } }
    end,
    config = { extra = { seal = 'mar_grey' }, max_highlighted = 1 },
    use = function(self, card, area, copier)
        local conv_card = G.hand.highlighted[1]
        G.E_MANAGER:add_event(Event({
            func = function()
                play_sound('tarot1')
                card:juice_up(0.3, 0.5)
                return true
            end
        }))

        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.1,
            func = function()
                conv_card:set_seal(card.ability.extra.seal, nil, true)
                return true
            end
        }))

        delay(0.5)
        G.E_MANAGER:add_event(Event({
            trigger = 'after',
            delay = 0.2,
            func = function()
                G.hand:unhighlight_all()
                return true
            end
        }))
    end,
}
