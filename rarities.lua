SMODS.Rarity {
    key = "funky",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.67,
    badge_colour = HEX('da852c'),
    loc_txt = {
        name = "Funky"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "very_common",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.8,
    badge_colour = HEX('6d93ba'),
    loc_txt = {
        name = "Very Common"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "mega_rare",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.03,
    badge_colour = HEX('c851bc'),
    loc_txt = {
        name = "Mega Rare"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "ultra_rare",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.01,
    badge_colour = HEX('1b1b1e'),
    loc_txt = {
        name = "Ultra Rare"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "unusual",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.5,
    badge_colour = HEX('089bb5'),
    loc_txt = {
        name = "Unusual"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "junk",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.9,
    badge_colour = HEX('855c47'),
    loc_txt = {
        name = "Junk"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}

SMODS.Rarity {
    key = "gem",
    pools = {
        ["Joker"] = true
    },
    default_weight = 0.01,
    badge_colour = HEX('2775c6'),
    loc_txt = {
        name = "Gem"
    },
    get_weight = function(self, weight, object_type)
        return weight
    end,
}