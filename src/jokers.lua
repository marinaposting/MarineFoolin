SMODS.Atlas ({
    key = "Jokers-Atlas",
    path = "Jokers-Atlas.png",
    px = 71,
    py = 95
})

SMODS.Atlas ({
    key = "Jokers-Niko",
    path = "niko.png",
    px = 71,
    py = 95
})

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
    discovered = false,
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

--castle
SMODS.Joker {
    key = "castle",
    config = { extra = {odds = 6, chips = 100, chip_mod = 1} },
    atlas = 'Jokers-Atlas',
    pos = {x = 0, y = 2},
    blueprint_compat = true,
    unlocked = true,
    discovered = false,
    eternal_compat = false,
    rarity = 1,
    cost = 4,
    loc_vars = function(self, info_queue, card)
        return { vars = { card.ability.extra.chips} }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'mar_castle', 1, card.ability.extra.odds) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        -- This replicates the food destruction effect
                        -- If you want a simpler way to destroy Jokers, you can do SMODS.destroy_cards(card) for a dissolving animation
                        -- or just card:remove() for no animation
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                G.GAME.pool_flags.mar_castle_extinct = true
                return {
                    message = "collapsed!"
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        if context.after and context.main_eval and not context.blueprint then
            card.ability.extra.chips = card.ability.extra.chips + card.ability.extra.chip_mod
            return {
                message = "+1",
                colour = G.C.CHIPS
            }
        
        end
        if context.joker_main then
            return {
                chips = card.ability.extra.chips
            }
        end
    end,
    in_pool = function(self, args) -- equivalent to `no_pool_flag = 'vremade_gros_michel_extinct'`
        return not G.GAME.pool_flags.mar_castle_extinct
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
            "{C:inactive}(Currently {C:chips}+#1#{C:inactive})",
            "{C:inactive,s:0.8}(art by Inky){}"
        }
    },
    atlas = "Jokers-Atlas",
    pos = {x = 4, y = 0},
    rarity = 1,
    cost = 5,
    unlocked = true,
    discovered = false,
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

--marina
SMODS.Joker {
    key = "marina",
    blueprint_compat = true,
    rarity = 1,
    cost = 5,
    atlas = "Jokers-Atlas",
    pos = { x = 2, y = 2 },
    calculate = function(self, card, context)
        if context.other_consumeable then 
            return {
                chips = 40,
                message_card = context.other_consumeable
            }
        end
    end
}

--pearl
SMODS.Joker {
    key = "pearl",
    blueprint_compat = true,
    rarity = 1,
    cost = 6,
    atlas = "Jokers-Atlas",
    pos = { x = 3, y = 2 },
    calc_dollar_bonus = function(self, card)
        return G.GAME.hands[SMODS.last_hand.scoring_name].level
    end
}

--fortress
SMODS.Joker {
    key = "fortress",
    blueprint_compat = true,
    eternal_compat = false,
    rarity = 1,
    cost = 4,
    atlas = "Jokers-Atlas",
    pos = { x = 1, y = 2 },
    config = { extra = { odds = 1000, Xchips = 3, Xchip_mod = 0.05 } },
    loc_vars = function(self, info_queue, card)
        local numerator, denominator = SMODS.get_probability_vars(card, 1, card.ability.extra.odds, 'mar_fortress')
        return { vars = { card.ability.extra.Xchips, numerator, denominator } }
    end,
    calculate = function(self, card, context)
        if context.end_of_round and context.game_over == false and context.main_eval and not context.blueprint then
            if SMODS.pseudorandom_probability(card, 'mar_fortress', 1, card.ability.extra.odds) then
                G.E_MANAGER:add_event(Event({
                    func = function()
                        -- This replicates the food destruction effect
                        -- If you want a simpler way to destroy Jokers, you can do SMODS.destroy_cards(card) for a dissolving animation
                        -- or just card:remove() for no animation
                        play_sound('tarot1')
                        card.T.r = -0.2
                        card:juice_up(0.3, 0.4)
                        card.states.drag.is = true
                        card.children.center.pinch.x = true
                        G.E_MANAGER:add_event(Event({
                            trigger = 'after',
                            delay = 0.3,
                            blockable = false,
                            func = function()
                                card:remove()
                                return true
                            end
                        }))
                        return true
                    end
                }))
                return {
                    message = "collapsed!"
                }
            else
                return {
                    message = localize('k_safe_ex')
                }
            end
        end
        if context.after and context.main_eval and not context.blueprint then
            card.ability.extra.Xchips = card.ability.extra.Xchips + card.ability.extra.Xchip_mod
            return {
                message = "+0.05",
                colour = G.C.CHIPS
            }
        
        end
        if context.joker_main then
            return {
                xchips = card.ability.extra.Xchips
            }
        end
    end,
    in_pool = function(self, args) -- equivalent to `yes_pool_flag = 'vremade_gros_michel_extinct'`
        return G.GAME.pool_flags.mar_castle_extinct
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
    discovered = false,
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
    discovered = false,
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
                if joker.ability.set == 'Joker' and joker:has_attribute("chance") then
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

--dive
SMODS.Joker{
    key = "dive",
    atlas = 'Jokers-Atlas',
    pos = {x=4,y=1},
    rarity = 2,
    cost = 6,
    unlocked = false,
    discovered = false,
    blueprint_compat = true,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = {set = "Other", key = "mar_pressure_desc"}
    end,
    calculate = function(self, card, context)
        if context.joker_main and #context.scoring_hand == 5 then
            return {
                xblindsize = 0.9,
                xblind_size_message = { message = "10psi", colour = G.C.DYN_UI.DARK, sound= "xblindsize" },
            }
        end
    end,
    check_for_unlock = function(self, args)
        return args.type == 'round_win' and
            G.GAME.current_round.hands_left == 0 and
            G.GAME.blind.boss
    end

}

--SEAL
SMODS.Joker{
    key = "seal",
    config = { extra = { chips = 25 , unlock = 2} },

    atlas = 'Jokers-Atlas',
    pos = {x = 1, y = 0},
    rarity = 3,
    cost = 6,
    unlocked = true,
    discovered = false,
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
    end,
    
}

--BETTA
SMODS.Joker {
    key = "betta",
    atlas = 'Jokers-Atlas',
    unlocked = false,
    discovered = false,
    pos = {x = 3, y = 1},
    rarity = 3,
    cost = 8,
    blueprint_compat = true,
    config = { extra = { xchips = 1.5 } },
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
    end,
    check_for_unlock = function(self, args)
        return args.type == 'min_hand_size' and G.hand and G.hand.config.card_limit <= 6
    end
}

-- THE DEEP
SMODS.Joker {
    key = "deep",
    atlas = 'Jokers-Atlas',
    unlocked = false,
    discovered = false,
    pos = {x = 0, y = 1},
    blueprint_compat = true,
    rarity = 3,
    cost = 8,
    loc_vars = function(self, info_queue, card)
        info_queue[#info_queue + 1] = {set = "Other", key = "mar_pressure_desc"}
    end,
    calculate = function(self, card, context)
        if context.other_joker and context.other_joker.edition and context.other_joker.edition.key == "e_negative" then

            return {
                xblindsize = 0.9,
                xblind_size_message = { message = "10psi", colour = G.C.DYN_UI.DARK, sound= "xblindsize" },

            }
        end
    end,
    check_for_unlock = function(self, args)
        if args.type == 'win_challenge' and G.GAME.challenge == "c_mar_waters" then
            self.challenge_bypass = true
            unlock_card(self)
        end
    end,
}

--NIKO
SMODS.Joker {
    key = "niko",
    atlas = "Jokers-Niko",
    unlocked = false,
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