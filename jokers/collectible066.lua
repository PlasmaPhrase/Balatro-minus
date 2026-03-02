
SMODS.Joker{ --👍︎⚐︎☹︎☹︎☜︎👍︎❄︎✋︎👌︎☹︎☜︎ ✁︎📁︎🖰︎⌛︎
    key = "collectible066",
    config = {
        extra = {
            mult0 = 20
        }
    },
    loc_txt = {
        ['name'] = '👍︎⚐︎☹︎☹︎☜︎👍︎❄︎✋︎👌︎☹︎☜︎ ✁︎📁︎🖰︎⌛︎',
        ['text'] = {
            [1] = '{C:red}🖃︎📄︎📁︎{} 💣︎🕆︎☹︎❄︎'
        },
        ['unlock'] = {
            [1] = 'Unlocked by default.'
        }
    },
    pos = {
        x = 7,
        y = 6
    },
    display_size = {
        w = 71 * 1, 
        h = 95 * 1
    },
    cost = 8,
    rarity = "minus_unusual",
    blueprint_compat = true,
    eternal_compat = true,
    perishable_compat = true,
    unlocked = true,
    discovered = true,
    atlas = 'CustomJokers',
    pools = { ["minus_minus_jokers"] = true },
    
    calculate = function(self, card, context)
        if context.cardarea == G.jokers and context.joker_main  then
            error("ERROR: null")
            return {
                mult = 20
            }
        end
    end
}

local check_for_buy_space_ref = G.FUNCS.check_for_buy_space
G.FUNCS.check_for_buy_space = function(card)
    if card.config.center.key == "j_minus_collectible066" then -- ignore slot limit when bought
        return true
    end
    return check_for_buy_space_ref(card)
end

local can_select_card_ref = G.FUNCS.can_select_card
G.FUNCS.can_select_card = function(e)
    	if e.config.ref_table.config.center.key == "j_minus_collectible066" then
        		e.config.colour = G.C.GREEN
        		e.config.button = "use_card"
    	else
        		can_select_card_ref(e)
    	end
end