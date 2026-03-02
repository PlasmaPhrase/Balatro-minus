
SMODS.Joker{ --Collectible #067
    key = "collectible067",
    config = {
        extra = {
            mult0 = 6.7
        }
    },
    loc_txt = {
        ['name'] = 'Collectible #067',
        ['text'] = {
            [1] = '{C:red}+6.7{} Mult'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 6
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 9,
    rarity = "minus_junk",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = false,
    atlas = 'CustomJokers',
    pools = { ["minus_minus_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            return {
                mult = 6.7
            }
        end
    end
}