SMODS.Atlas({
key = "tags",
path = "Tag_Atlas.png", 
px = 32, 
py = 32
})

SMODS.Tag {
    key = "marine",
    atlas = "tags",
    pos = { x = 0, y = 0 },
    apply = function(self, tag, context)
        if context.type == 'store_joker_create' then
            local card = SMODS.create_card {
                set = "mar_jokers",
                area = context.area,
                key_append = "mar_jokers"
            }
            create_shop_card_ui(card, 'Joker', context.area)
            card.states.visible = false
            tag:yep('+', G.C.GREEN, function()
                card:start_materialize()
                card.ability.couponed = true
                card:set_cost()
                return true
            end)
            tag.triggered = true
            return card
        end
    end
}