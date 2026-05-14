SMODS.Atlas ({
    key = "rip_seal",
    path = "rip_seal.png",
    px = 71,
    py = 95,
})
SMODS.Atlas ({
    key = "seal_seal",
    path = "seal_seal.png",
    px = 71,
    py = 95,
})

SMODS.Seal {
    key = "devour",
    atlas = "rip_seal",
    badge_colour = HEX("0047AB"),
    loc_txt = {
        name = "Riptide Seal",
        label = "Riptide Seal",
        text = {
            "Discard to destroy the",
            "next {C:attention,E:1}held in hand{}",
            "{C:attention}playing card{} to the left",
            "{C:inactive,s:0.8}(Drag to rearrange{C:inactive,s:0.8})"
        },
    unlocked = true,
    discovered = true,
    },
    calculate = function(self, card, context)
        if context.discard and context.other_card == card then
            local hand_cards = G.hand.cards
            local discarded = context.full_hand  
            local my_index = nil
            for i, v in ipairs(hand_cards) do
                if v == card then
                    my_index = i
                    break
                end
            end
            if my_index then
                for i = my_index - 1, 1, -1 do
                    local target = hand_cards[i]
                    local is_discarded = false
                    for _, d in ipairs(discarded) do
                        if d == target then
                            is_discarded = true
                            break
                        end
                    end
                    if not is_discarded then
                        target:start_dissolve()
                        break
                    end
                end
            end
        end
    end
}
SMODS.Seal {
    key = "grey",
    atlas = "seal_seal",
    badge_colour = HEX("8a9097"),
    loc_txt = {
        name = "Grey Seal",
        label = "Grey Seal",
        text = {
            "Create a {C:spectral}Seal",
            "card when {C:attention}played",
        },
    unlocked = true,
    discovered = true,
    },
    calculate = function(self, card, context)
        if context.main_scoring and context.cardarea == G.play and #G.consumeables.cards + G.GAME.consumeable_buffer < G.consumeables.config.card_limit then
            G.GAME.consumeable_buffer = G.GAME.consumeable_buffer + 1
            return {    
                extra = {
                    message = localize('k_plus_spectral'), 
                    colour = G.C.Spectral,
                    func = function()
                        G.E_MANAGER:add_event(Event({
                            func = (function()
                                SMODS.add_card{ 
                                set = 'mar_seals', 
                                area = G.consumeables 
                                }
                                G.GAME.consumeable_buffer = 0
                                return true
                            end)
                        }))
                    end
                },
            }        
                 
               
        end
    end
}