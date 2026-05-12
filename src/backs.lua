SMODS.Atlas ({
    key = "Decks-Water",
    path = "Decks-Water.png",
    px = 71,
    py = 95
})

--WATER DECK    
SMODS.Back {
    key = "water",
    atlas = "Decks-Water",
    config = { voucher = 'v_magic_trick', consumables = { 'c_deja_vu', 'c_trance' } },
    unlocked = false,
    loc_vars = function(self, info_queue, back)
        return {
            vars = { localize { type = 'name_text', key = self.config.voucher, set = 'Voucher' },
                localize { type = 'name_text', key = self.config.consumables[1], set = 'Spectral' }
            }
        }
    end,
    check_for_unlock = function(self, args) -- equivalent to `unlock_condition = { type = 'modify_deck', extra = { count = 30, suit = 'Hearts' } }`
        if args.type == 'modify_deck' then
            local count = 0
            for _, playing_card in ipairs(G.playing_cards or {}) do
                if playing_card.seal then count = count + 1 end
                if count >= 16 then
                    return true
                end
            end
        end
        return false
    end
}