local function AbsoleadSlash(msg,editbox)
   print ("Hello Abso")
   AbsoLeadFrame:Show()
    print ("Hello Abso over")
end

SLASH_ABSOLEAD1 = '/absolead' 

SlashCmdList["ABSOLEAD"] = AbsoleadSlash 


function AbsoLead_OnEvent(self, event, ...)
end


function AbsoLead_OnLoad(self)
local name, description, bossID, rootSectionID, link = EJ_GetEncounterInfoByIndex(bossIndex);
end

function AbsoLead_OnUpdate(self)
end
			