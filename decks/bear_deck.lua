SMODS.Back {
    key = 'bear_deck',
    pos = { x = 0, y = 0 },
    config = {
    },
    loc_txt = {
        name = 'Bear Deck',
        text = {
            [1] = 'Start run with {C:attention}Overstock{}',
            [2] = '{C:purple}Collectible{} Jokers {C:blue}will {}spawn'
        },
    },
    unlocked = true,
    discovered = true,
    no_collection = false,
    atlas = 'CustomDecks',
    apply = function(self, back)
    end,

    -- Credit to N' for the code.
    check_for_unlock = function(self, args)
        local smods_add_to_pool_ref = SMODS.add_to_pool
        function SMODS.add_to_pool(prototype_obj, args)
            if prototype_obj.set == "Joker" and G.GAME.selected_back.effect.center.key == "minus" and (not prototype_obj.mod or prototype_obj.mod.id ~= "balatrominus") then
                return false
            end
            return smods_add_to_pool_ref(prototype_obj, args)
        end
    end
}
