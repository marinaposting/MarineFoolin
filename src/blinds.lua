SMODS.Atlas({key = 'maru_blinds', path = 'marublinds.png', px = 34, py = 34, frames = 21, atlas_table = 'ANIMATION_ATLAS'})

-- THE SHARK
SMODS.Blind {
    key = "shark",
    dollars = 5,
    mult = 2,
    pos = {x = 0, y = 0},
    atlas = "maru_blinds",   
    boss = { min = 5 },             
    boss_colour = HEX("6e8d99"),
    loc_txt = {
        name = "The Shark",
        text = {
            "Played scoring cards",
            "have a {C:green}1 in 5{} chance",
            "to be destroyed"
        }
    },

    calculate = function(self, blind, context)
        if not blind.disabled then
            
            if context.destroy_card and context.cardarea == G.play and SMODS.pseudorandom_probability(blind, "unique seed", 1, 5) then
                return { remove = true,
                message_card = context.destroy_card,
                message = "CHOMP!" 
            }
            end
        end
    end
}

--THE ORCA
SMODS.Blind {
    key = "orca",
    dollars = 5,
    mult = 2,
    pos = {x = 0, y = 1},
    atlas = "maru_blinds",   
    boss = { min = 3 },             
    boss_colour = HEX("2c2c2c"),
    loc_txt = {
        name = "The Orca",
        text = {
            "All playing cards",
            "with a seal are",
            "debuffed"
        }
    },

    recalc_debuff = function(self, card, from_blind)
        if card.area ~= G.jokers and not G.GAME.blind.disabled then
            if card.seal then
                return true
            end
            return false
        end
    end,
}

--COBALT SEA
SMODS.Blind {
    key = "sea",
    dollars = 8,
    mult = 2,
    pos = {x = 0, y = 2},
    atlas = "maru_blinds", 
    boss = {showdown = true},
    boss_colour = HEX("0047ab"),
    loc_txt = {
        name = "Cobalt Sea",
        text = {
            "After play, all enhancements",
            "and seals from cards held",
            "in hand are washed away"
        }
    },

    press_play = function(self)
        G.E_MANAGER:add_event(Event({func = function()
            local triggered = false
            for _, v in ipairs(G.hand.cards) do
                local has_modifier = false
                if v.config.center.key ~= 'c_base' then
                    triggered = true
                    has_modifier = true
                    v:set_ability('c_base', nil, true)
                end
                if v.seal then
                    triggered = true
                    has_modifier = true
                    v:set_seal()
                end
                if has_modifier then
                    G.E_MANAGER:add_event(Event({func = function()
                        v:juice_up()
                    return true end }))
                end
            end
            G.GAME.blind.triggered = triggered
        return true end}))
        return true
    end
}