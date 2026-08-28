--- STEAMODDED HEADER
--- MOD_NAME: BalaHorse
--- MOD_ID: balaHorse
--- MOD_AUTHOR: GeorgeRat
--- MOD_DESCRIPTION: Horse

----------------------------------------------
------------MOD CODE -------------------------
----------------------------------------------

local function init()
    G.localization.misc.poker_hands['Full house'] = "Full Horse"
    G.localization.misc.poker_hands['Flush house'] = "Flush Horse"



    sendDebugMessage("BalaHorse:: Successfully Horsed the Houses")
end

if SMODS.current_mod then
    SMODS.current_mod.process_loc_text = init
else
    init()
end

