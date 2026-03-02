
SMODS.Joker{ --Collectible #017
    key = "collectible017",
    config = {
        extra = {
            mult0 = 20
        }
    },
    loc_txt = {
        ['name'] = 'Collectible #017',
        ['text'] = {
            [1] = '{C:red}+20{} Mult'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 8,
        y = 1
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 5,
    rarity = 1,
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
                mult = 20
            }
        end
    end
}