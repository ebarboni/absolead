local function AbsoleadSlash(msg,editbox)
    AbsoLeadEncounterJournal:Show()
end

SLASH_ABSOLEAD1 = '/absolead' 

SlashCmdList["ABSOLEAD"] = AbsoleadSlash 

local strat = {};
function AbsoLead_OnEvent(self, event, ...)
    if (event == "PLAYER_ENTERING_WORLD") then
        strat = createStrat();
        local instanceID = 946;
        AbsoLead_DisplayInstance(instanceID);
    end
end

local EJ_LORE_MAX_HEIGHT = 197;
function AbsoLead_DisplayEncounter(encounterID)
    local self = AbsoLeadEncounterJournal.encounter;   
    -- local bossListScrollValue = self.info.bossesScroll.ScrollBar:GetValue()
    AbsoLead_CleanUI();
    -- AbsoLead_DisplayEncounter.encounter.info.bossesScroll.ScrollBar:SetValue(bossListScrollValue)
    
    local ename, description, _, rootSectionID = EJ_GetEncounterInfo(encounterID);
    self.info.encounterTitle:Show();
    self.info.encounterTitle:SetText(ename);
    
    self.info.sendstrat:Show();
    EJ_SelectEncounter(encounterID);
    if (strat[encounterID]) then
        --print("cool",description);
        local description = strat[encounterID][0];
        self.overviewFrame.loreDescription:SetHeight(0);
        self.overviewFrame.loreDescription:SetWidth(self.overviewFrame:GetWidth() - 5);
        
        self.overviewFrame.loreDescription:SetText(description);
        
    end  
    self.overviewFrame.loreDescription:Show();
    self.overviewFrame:Show();
    
    self:Show();
    
    
end
function AbsoReadEncounterJournal_OnHyperlinkEnter(self, link, text, fontString, left, bottom, width, height)
    print("samuit");
    self.tooltipFrame:SetOwner(self, "ANCHOR_PRESERVE");
    
    self.tooltipFrame:ClearAllPoints();
    self.tooltipFrame:SetPoint("BOTTOMLEFT", fontString, "TOPLEFT", left + width, bottom);
    self.tooltipFrame:SetHyperlink(link, EJ_GetDifficulty());
end
function AbsoLeadEncounterJournalInstanceButton_OnClick(self)
    --NavBar_Reset(EncounterJournal.navBar);
    local instanceID = 946
    AbsoLead_DisplayInstance(instanceID);
end

function AbsoLead_OnLoad(self) 
    self:RegisterEvent("PLAYER_ENTERING_WORLD");
    self.encounter.bossesFrame = self.encounter.info.bossesScroll.child;
    self.encounter.overviewFrame = self.encounter.info.overviewScroll.child;
    self.encounter.infoFrame = self.encounter.info.detailsScroll.child;
    AbsoLead_CleanUI();
    
    AbsoLeadEncounterJournalTitleText:SetText("Abso Lead");
    SetPortraitToTexture(AbsoLeadEncounterJournalPortrait,"Interface\\EncounterJournal\\UI-EJ-PortraitIcon");
    AbsoLead_DisplayInstance(946);
end

function AbsoLead_CleanUI() 
    local self = AbsoLeadEncounterJournal.encounter;
    self.instance :Hide();
    self.overviewFrame.loreDescription:Hide();
    self.info.encounterTitle:Hide();
    self.info.sendstrat:Hide();
    --//self.instance.loreScroll:Hide();
  --[[  self.instance.titleBG:Show(); 
    self.info.encounterTitle:Hide();
    --self.instance.mapButton:SetShown(false);    
    self.instance.title:Hide();
   
    self.instance.loreScroll:Hide();
    --self.instance.loreBG:SetTexture(loreImage);
    self.instance.loreBG:Hide();
    self.instance.titleBG:Hide();
    self.info.overviewScroll:Hide();
    self.info.detailsScroll:Hide();
    --self.info.lootScroll:Hide();
    self.info.sendstrat:Hide();
    self.info.rightShadow:Hide();]]--
end
function AbsoLead_DisplayInstance(instanceID)
    
    local self = AbsoLeadEncounterJournal.encounter;
    AbsoLead_CleanUI();
    self:Show();
    self.instance :Show();
    EJ_SelectInstance(instanceID)
    local iname, description, bgImage, _, loreImage, buttonImage, dungeonAreaMapID = EJ_GetInstanceInfo();
    self.instance.title:SetText(iname); 
    self.instance.titleBG:SetWidth(self.instance.title:GetStringWidth() + 80);
    --self.instance.loreBG:SetTexture(loreImage);
    -- self.instance.loreBG:Show();   
    self.instance.loreScroll:Show();
    self.info.instanceTitle:SetText(iname);
    self.instance.titleBG:Show();
    self.instance.title:Show();
    self.instance.loreScroll.child.lore:SetText(description);
    local loreHeight = self.instance.loreScroll.child.lore:GetHeight();
    self.instance.loreScroll.ScrollBar:SetValue(0);
    if loreHeight <= EJ_LORE_MAX_HEIGHT then
        self.instance.loreScroll.ScrollBar:Hide();
    else
        self.instance.loreScroll.ScrollBar:Show();
    end
    
    self.info.instanceButton.instanceID = instanceID;
    self.info.instanceButton.icon:SetMask("Interface\\CharacterFrame\\TempPortraitAlphaMask");
    self.info.instanceButton.icon:SetTexture(buttonImage);
    
    --self.info.model.dungeonBG:SetTexture(bgImage);
    -- crawl all boss for dungeon
    local j = 1
    local bossButton;
    while EJ_GetEncounterInfoByIndex(j, instanceID) do
        local  name, description, bossID, rootSectionID, link = EJ_GetEncounterInfoByIndex(j, instanceID)
        if (strat[bossID]) then
            -- print('--', encounterId, name)
            --print("--description",description);
            bossButton = _G["AbsoLeadEncounterJournalBossButton"..j];
            if not bossButton then -- create a new header;
                bossButton = CreateFrame("BUTTON","AbsoLeadEncounterJournalBossButton"..j, AbsoLeadEncounterJournal.encounter.bossesFrame, "AbsoLeadEncounterBossButtonTemplate");
                if j > 1 then
                    bossButton:SetPoint("TOPLEFT", _G["AbsoLeadEncounterJournalBossButton"..(j-1)], "BOTTOMLEFT", 0, -15);
                else
                    bossButton:SetPoint("TOPLEFT", AbsoLeadEncounterJournal.encounter.bossesFrame, "TOPLEFT", 0, -10);
                end
            end
            
            bossButton.link = link;
            bossButton:SetText(name);
            bossButton:Show();
            bossButton.encounterID = bossID;
            --Use the boss' first creature as the button icon
            local _, _, _, _, bossImage = EJ_GetCreatureInfo(1, bossID);
            bossImage = bossImage or "Interface\\EncounterJournal\\UI-EJ-BOSS-Default";
            bossButton.creature:SetTexture(bossImage);
            bossButton:UnlockHighlight();
            if ( not hasBossAbilities ) then
                hasBossAbilities = rootSectionID > 0;
            end
        end
        j = j+1
    end 
    
--[[local name, description, bossID, rootSectionID, link = EJ_GetEncounterInfoByIndex(bossIndex);
    local i = 1
    while EJ_GetInstanceByIndex(i, true) do
        local instanceId, name = EJ_GetInstanceByIndex(i, true)
        print('+',instanceId, name)
        EJ_SelectInstance(instanceId)
        i = i+1
        
        local j = 1
        while EJ_GetEncounterInfoByIndex(j, instanceId) do
            local name, _, encounterId = EJ_GetEncounterInfoByIndex(j, instanceId)
            print('--', encounterId, name)
            j = j+1
        end

    end
    ]]--
    -- 946 instance id for antorus
    -- 1992 garothi
    -- 1987 molosses
    -- 1997 haut comm
    --1985 hasabel
    --2025 eonar
    --2009 imonar
    --2004 kin'garoth
    --1983 varimathara
    --1986 sabbat
    --1984 aggramar
    --2031 argus
end

function AbsoLead_OnUpdate(self)
end
