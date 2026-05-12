SMODS.Atlas ({
    key = "Jokers-Atlas",
    path = "Jokers-Atlas.png",
    px = 71,
    py = 95
})

SMODS.Atlas ({
    key = "Jokers-WIP",
    path = "Jokers-WIP.png",
    px = 71,
    py = 95
})
SMODS.Atlas ({
    key = "Jokers-Niko",
    path = "niko.png",
    px = 71,
    py = 95
})

--FISHING
SMODS.Joker{
    key = "Fishing",
    config = { extra = { chips = 0, chip_mod = 4, dollars = 2} },    
    atlas = 'Jokers-Atlas',
    pos = {x = 0, y = 0},
    rarity = 2,
    cost = 5,
    unlocked = false,
    discovered = false,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = false,
    calculate = function(self,card,context)            
        if context.pseudorandom_result and context.result == true then
            if not context.blueprint then
                card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            end
            return {
                dollars = card.ability.extra.dollars,
                message = not context.blueprint and localize("k_upgrade_ex") or nil,
                colour = not context.blueprint and G.C.CHIPS or nil
            }
        end
            

        if context.joker_main then
            return {                                     
                chips = card.ability.extra.chips, 
            }
        end
    end,
    loc_vars = function(self, info_queue, card)          --defines variables to use in the UI. you can use #1# for example to show the chips variable
        return { vars = { card.ability.extra.chips, card.ability.extra.chip_mod }, key = self.key }
    end,
    check_for_unlock = function(self, args) -- equivalent to `unlock_condition = { type = 'modify_jokers', extra = { polychrome = true, count = 2 } }`
        if args.type == 'modify_jokers' and G.jokers then
            local count = 0
            for _, joker in ipairs(G.jokers.cards) do
                if joker.ability.set == 'Joker' and joker:has_attribute('chance') then
                    count = count + 1
                end
                if count >= 2 then
                    return true
                end
            end
        end
        return false
    end,
}

--SEAL
SMODS.Joker{
    key = "seal",
    config = { extra = { chips = 25 } },

    atlas = 'Jokers-Atlas',
    pos = {x = 1, y = 0},
    rarity = 3,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,  
    loc_vars = function(self, info_queue, card)
        local seal_count = 0
        if G.playing_cards then
            for k, v in pairs(G.playing_cards) do
                if v:get_seal() then
                    seal_count = seal_count+1
                end
            end
        end
        return { vars = { card.ability.extra.chips, card.ability.extra.chips * seal_count } }
    end,
    calculate = function(self,card,context)
        if context.joker_main then
            local seal_count = 0
            for k, v in pairs(G.playing_cards) do
                if v:get_seal() then
                    seal_count = seal_count+1
                end
            end
            return {
                chips = card.ability.extra.chips * seal_count
            }
        end
    end,
    in_pool = function(self, args)
        for k, v in ipairs(G.playing_cards or {}) do
            if v:get_seal() then
                return true
            end
        end
        return false
    end
}

--WAVE
SMODS.Joker{
    key = "wave",
    config = { extra = { repetitions = 1 } },
    loc_txt = {
        name = "Wave",
        text = {
            "Retrigger {C:attention}every other{}",
            "played card used in scoring"
        }
    },
    atlas = 'Jokers-Atlas',
    pos = {x = 2, y = 0},
    rarity = 2,
    cost = 5,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.repetitions } }
    end,
    calculate = function(self, card, context)
        if context.repetition and context.cardarea == G.play and context.scoring_hand then
            for i = 1, #context.scoring_hand do
                if context.scoring_hand[i] == context.other_card then
                    -- I hate this
                    if i % 2 ~= 0 then
                        return {
                            repetitions = card.ability.extra.repetitions,
                            card = card
                        }
                    end
                    
                    break 
                end
            end
        end
    end
}

--SUSHI--
SMODS.Joker{
    key = "sushi",
    config = { extra = { hands_left = 10, dollars = 1 } },
    loc_txt = {
        name = "Sushi",
        text = {
            "Played cards earn",
            "{C:money}$1{} for the",
            "next {C:attention}#1#{} hands"
        }
    },
    atlas = 'Jokers-Atlas',
    pos = {x = 3, y = 0},
    rarity = 2,
    cost = 7,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = false,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.hands_left } }
    end,
    calculate = function(self, card, context)
        if context.individual and context.cardarea == G.play and context.scoring_hand then
            G.GAME.dollar_buffer = (G.GAME.dollar_buffer or 0) + card.ability.extra.dollars
            return {
                dollars = card.ability.extra.dollars,
                func = function()
                    G.E_MANAGER:add_event(Event({
                        func = function()
                            G.GAME.dollar_buffer = 0
                            return true
                        end
                    }))
                end
            }
        end
        if context.after and not context.blueprint then
            if card.ability.extra.hands_left - 1 <= 0 then
                SMODS.destroy_cards(card, nil, nil, true)
                return {
                    message = localize('k_eaten_ex'),
                    colour = G.C.FILTER
                }
            else
                card.ability.extra.hands_left = card.ability.extra.hands_left - 1
                return {
                    message = card.ability.extra.hands_left .. '',
                    colour = G.C.FILTER
                }
            end
        end
    end
}

--MERMAID--
SMODS.Joker{
    key = "mermaid",
    config = { extra = { chips = 0, chip_mod = 20 } },
    loc_txt = {
        name = "Mermaid",
        text = {
            "{C:chips}+20{} Chips per {C:spectral}spectral{}",
            "cards used this run",
            "{C:inactive}(Currently {C:chips}+#1#{C:inactive})"
        }
    },
    atlas = "Jokers-WIP",
    pos = {x = 0, y = 0},
    rarity = 1,
    cost = 6,
    unlocked = true,
    discovered = true,
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chip_mod * (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.spectral or 0) } }
    end,
    calculate = function(self, card, context)
        if context.using_consumeable and not context.blueprint and context.consumeable.ability.set == "Spectral" then
--            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            return {
                message = localize('k_upgrade_ex'),
                colour = G.C.CHIPS
            }
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chip_mod * (G.GAME.consumeable_usage_total and G.GAME.consumeable_usage_total.spectral or 0)
            }
        end
    end,

}

-- THE DEEP
SMODS.Joker {
    key = "deep",
    loc_txt = {
        name = "The Deep",
        text = {
            "{C:dark_edition}Negative{} Jokers each",
            "exert {X:dark_edition,C:white}10%{} Pressure"
        }
    },
    atlas = 'Jokers-Atlas',
    pos = {x = 0, y = 1},
    blueprint_compat = true,
    unlocked = true,
    discovered = true,
    rarity = 3,
    cost = 8,
    calculate = function(self, card, context)
        if context.other_joker and context.other_joker.edition and context.other_joker.edition.key == "e_negative" then

            return {
                xblindsize = 0.9
            }
        end
    end,
}

--LIFEBUOY
SMODS.Joker {
    key = "lifesaver",
    config = { extra = { chips = 82 , mult = 36 } },
    loc_txt = {
        name = "Life Buoy",
        text = {
            "Sell this card to",
            "discard all non-selected", 
            "{C:attention}playing cards{}",
            "{C:inactive,s:0.8}(art by edward robinson{C:inactive,s:0.8})"
        }
    },
    atlas = 'Jokers-Atlas',
    pos = {x = 1, y = 1},
    blueprint_compat = false,
    unlocked = true,
    discovered = true,
    rarity = 1,
    cost = 2,
    eternal_compat = false,
    calculate = function(self, card, context)
        if context.selling_self then
            play_sound('holo1')
            local highlighted = {}
            local discarded = 0

            for _, card in ipairs(G.hand.highlighted) do
                highlighted[card] = true
            end

            for i = #G.hand.cards, 1, -1 do
                local card = G.hand.cards[i]

                if not highlighted[card] then
                    discarded = discarded + 1
                    draw_card(G.hand, G.discard, 100, 'down', false, card)
                end
            end

            for i = 1, discarded do
                draw_card(G.deck, G.hand, 100, 'up')
            end
        end
    end
}

--Beach Joker
SMODS.Joker {
    key = "beach",
    config = { extra = { chips = 75} },
    loc_txt = {
        name = "Beach Joker",
        text = {
            "{C:chips}+75{} Chips"
        }
    },
    atlas = 'Jokers-Atlas',
    pos = {x = 2, y = 1},
    blueprint_compat = true,
    unlocked = true,
    discovered = true,
    rarity = 1,
    cost = 4,
    calculate = function(self, card, context)
        if context.joker_main then
            return {                                     
                chips = card.ability.extra.chips, 
            }
        end
    end
}

SMODS.Joker {
    key = "betta",
    atlas = 'Jokers-Atlas',
    pos = {x = 3, y = 1},
    discovered = true,
    rarity = 3,
    cost = 8,
    blueprint_compat = true,
    config = { extra = { xchips = 1 } },
    loc_vars = function(self, info_queue, card)
        local card_limit = (G.hand and G.hand.config and G.hand.config.card_limit) or 8
        local hand_diff = math.max(0, 8 - card_limit)
        local total_xchips = 1 + hand_diff * card.ability.extra.xchips
        return { vars = {total_xchips}}
    end,
    calculate = function(self, card, context)
        if context.joker_main then
            local hand_diff = math.max(0, 8 - G.hand.config.card_limit)
            local total_xchips = 1 + hand_diff * card.ability.extra.xchips

            return {
                xchips = total_xchips
            }
        end
    end
}


SMODS.Joker {
    key = "niko",
    atlas = "Jokers-Niko",
    unlocked = true,
    discovered = false,
    rarity = 4,
    cost = 20,
    soul_pos = { x = 0, y = 1},
    blueprint_compat = true,
    config = { extra = { repetitions = 2 } },
    calculate = function(self, card, context)
        if context.repetition and (context.cardarea == G.play or context.cardarea == G.hand) and context.other_card:get_seal() then
            return {
                repetitions = card.ability.extra.repetitions
            }
        
        end
    end
}