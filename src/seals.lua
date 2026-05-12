SMODS.Atlas ({
    key = "rip_seal",
    path = "rip_seal.png",
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