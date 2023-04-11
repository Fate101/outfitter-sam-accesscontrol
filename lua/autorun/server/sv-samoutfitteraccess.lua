Fate = Fate or {}
Fate.SAMOutfitterAccess = Fate.SAMOutfitterAccess or {}

function Fate.SAMOutfitterAccess.CanOutfit(ply, mdlName, workshopID)
    local canUse = false 

    if sam then canUse = ply:HasPermission("outfitter") end
    if !canUse then canUse = ply:IsAdmin() end

    if !canUse then
        ply:PrintMessage( HUD_PRINTTALK, "[Outfitter] You don't have access to use Outfitter, your outfit will not show to other player and only you can see it :c" )
    end

    return canUse
end

hook.Add( "CanOutfit", "Fate.SAMOutfitterAccess.CanOutfit", Fate.SAMOutfitterAccess.CanOutfit )