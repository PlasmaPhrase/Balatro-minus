SMODS.Atlas({
    key = "modicon", 
    path = "ModIcon.png", 
    px = 34,
    py = 34,
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "balatro", 
    path = "balatro.png", 
    px = 333,
    py = 216,
    prefix_config = { key = false },
    atlas_table = "ASSET_ATLAS"
})


SMODS.Atlas({
    key = "CustomJokers", 
    path = "CustomJokers.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

SMODS.Atlas({
    key = "CustomDecks", 
    path = "CustomDecks.png", 
    px = 71,
    py = 95, 
    atlas_table = "ASSET_ATLAS"
})

local NFS = require("nativefs")
to_big = to_big or function(a) return a end
lenient_bignum = lenient_bignum or function(a) return a end

local jokerIndexList = {102,101,1,2,3,4,5,6,7,8,9,10,11,12,13,14,15,16,17,18,19,20,21,22,23,24,25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40,41,42,43,44,45,46,47,48,49,50,51,52,53,54,55,56,57,58,59,60,61,62,63,64,65,66,67,68,69,70,71,72,73,74,75,76,77,78,79,80,81,82,83,84,85,86,87,88,89,90,91,92,93,94,95,96,97,98,99,100}

local function load_jokers_folder()
    local mod_path = SMODS.current_mod.path
    local jokers_path = mod_path .. "/jokers"
    local files = NFS.getDirectoryItemsInfo(jokers_path)
    for i = 1, #jokerIndexList do
        local file_name = files[jokerIndexList[i]].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("jokers/" .. file_name))()
        end
    end
end


local deckIndexList = {1}

local function load_decks_folder()
    local mod_path = SMODS.current_mod.path
    local decks_path = mod_path .. "/decks"
    local files = NFS.getDirectoryItemsInfo(decks_path)
    for i = 1, #deckIndexList do
        local file_name = files[deckIndexList[i]].name
        if file_name:sub(-4) == ".lua" then
            assert(SMODS.load_file("decks/" .. file_name))()
        end
    end
end

local function load_rarities_file()
    local mod_path = SMODS.current_mod.path
    assert(SMODS.load_file("rarities.lua"))()
end

load_rarities_file()
load_jokers_folder()
load_decks_folder()
SMODS.ObjectType({
    key = "minus_food",
    cards = {
        ["j_gros_michel"] = true,
        ["j_egg"] = true,
        ["j_ice_cream"] = true,
        ["j_cavendish"] = true,
        ["j_turtle_bean"] = true,
        ["j_diet_cola"] = true,
        ["j_popcorn"] = true,
        ["j_ramen"] = true,
        ["j_selzer"] = true
    },
})

SMODS.ObjectType({
    key = "minus_minus_jokers",
    cards = {
        ["j_minus_collectible001"] = true,
        ["j_minus_collectible002"] = true,
        ["j_minus_collectible003"] = true,
        ["j_minus_collectible004"] = true,
        ["j_minus_collectible005"] = true,
        ["j_minus_collectible006"] = true,
        ["j_minus_collectible007"] = true,
        ["j_minus_collectible008"] = true,
        ["j_minus_collectible009"] = true,
        ["j_minus_collectible010"] = true,
        ["j_minus_collectible011"] = true,
        ["j_minus_collectible012"] = true,
        ["j_minus_collectible013"] = true,
        ["j_minus_collectible014"] = true,
        ["j_minus_collectible015"] = true,
        ["j_minus_collectible016"] = true,
        ["j_minus_collectible017"] = true,
        ["j_minus_collectible018"] = true,
        ["j_minus_collectible019"] = true,
        ["j_minus_collectible020"] = true,
        ["j_minus_collectible021"] = true,
        ["j_minus_collectible022"] = true,
        ["j_minus_collectible023"] = true,
        ["j_minus_collectible024"] = true,
        ["j_minus_collectible025"] = true,
        ["j_minus_collectible026"] = true,
        ["j_minus_collectible027"] = true,
        ["j_minus_collectible028"] = true,
        ["j_minus_collectible029"] = true,
        ["j_minus_collectible030"] = true,
        ["j_minus_collectible031"] = true,
        ["j_minus_collectible032"] = true,
        ["j_minus_collectible033"] = true,
        ["j_minus_collectible034"] = true,
        ["j_minus_collectible035"] = true,
        ["j_minus_collectible036"] = true,
        ["j_minus_collectible037"] = true,
        ["j_minus_collectible038"] = true,
        ["j_minus_collectible039"] = true,
        ["j_minus_collectible040"] = true,
        ["j_minus_collectible041"] = true,
        ["j_minus_collectible042"] = true,
        ["j_minus_collectible043"] = true,
        ["j_minus_collectible044"] = true,
        ["j_minus_collectible045"] = true,
        ["j_minus_collectible046"] = true,
        ["j_minus_collectible047"] = true,
        ["j_minus_collectible048"] = true,
        ["j_minus_collectible049"] = true,
        ["j_minus_collectible050"] = true,
        ["j_minus_collectible051"] = true,
        ["j_minus_collectible052"] = true,
        ["j_minus_collectible053"] = true,
        ["j_minus_collectible054"] = true,
        ["j_minus_collectible055"] = true,
        ["j_minus_collectible056"] = true,
        ["j_minus_collectible057"] = true,
        ["j_minus_collectible058"] = true,
        ["j_minus_collectible059"] = true,
        ["j_minus_collectible060"] = true,
        ["j_minus_collectible061"] = true,
        ["j_minus_collectible062"] = true,
        ["j_minus_collectible063"] = true,
        ["j_minus_collectible064"] = true,
        ["j_minus_collectible065"] = true,
        ["j_minus_collectible066"] = true,
        ["j_minus_collectible067"] = true,
        ["j_minus_collectible068"] = true,
        ["j_minus_collectible069"] = true,
        ["j_minus_collectible070"] = true,
        ["j_minus_collectible071"] = true,
        ["j_minus_collectible072"] = true,
        ["j_minus_collectible073"] = true,
        ["j_minus_collectible074"] = true,
        ["j_minus_collectible075"] = true,
        ["j_minus_collectible076"] = true,
        ["j_minus_collectible077"] = true,
        ["j_minus_collectible078"] = true,
        ["j_minus_collectible079"] = true,
        ["j_minus_collectible080"] = true,
        ["j_minus_collectible081"] = true,
        ["j_minus_collectible082"] = true,
        ["j_minus_collectible083"] = true,
        ["j_minus_collectible084"] = true,
        ["j_minus_collectible085"] = true,
        ["j_minus_collectible086"] = true,
        ["j_minus_collectible087"] = true,
        ["j_minus_collectible088"] = true,
        ["j_minus_collectible089"] = true,
        ["j_minus_collectible090"] = true,
        ["j_minus_collectible091"] = true,
        ["j_minus_collectible092"] = true,
        ["j_minus_collectible093"] = true,
        ["j_minus_collectible094"] = true,
        ["j_minus_collectible095"] = true,
        ["j_minus_collectible096"] = true,
        ["j_minus_collectible097"] = true,
        ["j_minus_collectible098"] = true,
        ["j_minus_collectible099"] = true,
        ["j_minus_collectible100"] = true,
        ["j_minus_minusspace"] = true,
        ["j_minus_sunfish"] = true
    },
})


SMODS.current_mod.optional_features = function()
    return {
        cardareas = {} 
    }
end