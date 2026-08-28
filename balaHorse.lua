--- STEAMODDED HEADER
--- MOD_NAME: FullHorse
--- MOD_ID: fullhorse
--- MOD_AUTHOR: [GeorgeTheRat]
--- MOD_DESCRIPTION: Horse House

----------------------------------------------
------------MOD CODE -------------------------
----------------------------------------------

local function init()
    G.localization.misc.poker_hands['Flush House'] = "Flush Horse"
    G.localization.misc.poker_hands['Full House'] = "Full Horse"

    sendDebugMessage("BalaHorse :: Successfully Horse-ified the Houses!")
end

if SMODS.current_mod then
    SMODS.current_mod.process_loc_text = init
else
    init()
end
