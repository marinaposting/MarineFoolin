----------------------------------------------
------------MOD CODE -------------------------
--SMODS.Atlas({
--key = "modicon",
--path = "modicon.png", 
--px = 32, 
--py = 32
--})

assert(SMODS.load_file("src/jokers.lua"))()
assert(SMODS.load_file("src/backs.lua"))()
assert(SMODS.load_file("src/blinds.lua"))()
assert(SMODS.load_file("src/seals.lua"))()
assert(SMODS.load_file("src/spectrals.lua"))()
assert(SMODS.load_file("src/boosters.lua"))()
assert(SMODS.load_file("src/planets.lua"))()
assert(SMODS.load_file("src/challenges.lua"))()
assert(SMODS.load_file("src/tags.lua"))()


SMODS.current_mod.optional_features = function()
    return {
        object_weights = true,
    }
end

----------------------------------------------
------------MOD CODE END----------------------