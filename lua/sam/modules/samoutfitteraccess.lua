if not sam then
    return 
end

print("Outfitter SAM Access | Loading SAM extension!")

sam.command.set_category("Outfitter")
sam.permissions.add("outfitter","Outfitter","admin")