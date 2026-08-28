--- STEAMODDED HEADER
--- MOD_NAME: BalaGay
--- MOD_ID: balagay
--- MOD_AUTHOR: [Rat]
--- MOD_DESCRIPTION: Gay-ifies the Straights!

----------------------------------------------
------------MOD CODE -------------------------
----------------------------------------------

local function init()
    G.localization.misc.poker_hands['Flush House'] = "Flush Horse"
    G.localization.misc.poker_hands['Full House'] = "Full horse"

    -- fix for Runner
    G.localization.descriptions.Joker["j_runner"].text = {
        "Gains {C:chips}+#2#{} Chips",
        "if played hand",
        "contains a {C:attention}Gay{}",
        "{C:inactive}(Currently {C:chips}+#1#{C:inactive} Chips)"
    }

    -- fix for Shortcut
    G.localization.descriptions.Joker["j_shortcut"].text = {
        "Allows {C:attention}Gays{} to be",
        "made with gaps of {C:attention}1 rank",
        "{C:inactive}(ex: {C:attention}10 8 6 5 3{C:inactive})" 
    }

    -- fix for Four Fingers
    G.localization.descriptions.Joker["j_four_fingers"].text = {
        "All {C:attention}Flushes{} and",
        "{C:attention}Gays{} can be",
        "made with {C:attention}4{} cards"   
    }

    -- fix for Superposition
    G.localization.descriptions.Joker["j_superposition"].text = {
        "Create a {C:tarot}Tarot{} card if",
        "poker hand contains an",
        "{C:attention}Ace{} and a {C:attention}Gay{}",
        "{C:inactive}(Must have room)"
    }

    sendDebugMessage("BalaGay :: Successfully Horse-ified the Houses!")
end

if SMODS.current_mod then
    SMODS.current_mod.process_loc_text = init
else
    init()
end
