---------------------------------------------------------
_G.Start_Farm_Chest = true
_G.SetupTeam = true
---------------------------------------------------------
local Converted = {
	["_ScreenGui"] = Instance.new("ScreenGui");
	["_Frame"] = Instance.new("Frame");
	["_Frame1"] = Instance.new("Frame");
	["_UICorner"] = Instance.new("UICorner");
	["_StrawLogo"] = Instance.new("ImageLabel");
	["_UICorner1"] = Instance.new("UICorner");
	["_Frame2"] = Instance.new("Frame");
	["_UICorner2"] = Instance.new("UICorner");
	["_Time"] = Instance.new("TextLabel");
	["_TextLabel"] = Instance.new("TextLabel");
	["_Frame3"] = Instance.new("Frame");
	["_UICorner3"] = Instance.new("UICorner");
	["_Frame4"] = Instance.new("Frame");
	["_UICorner4"] = Instance.new("UICorner");
	["_Stop"] = Instance.new("TextButton");
	["_UICorner5"] = Instance.new("UICorner");
	["_Frame5"] = Instance.new("Frame");
	["_UICorner6"] = Instance.new("UICorner");
	["_Start"] = Instance.new("TextButton");
	["_UICorner7"] = Instance.new("UICorner");
	["_UICorner8"] = Instance.new("UICorner");
	["_Frame6"] = Instance.new("Frame");
	["_UICorner9"] = Instance.new("UICorner");
	["_TextLabel1"] = Instance.new("TextLabel");
	["_UICorner10"] = Instance.new("UICorner");
	["_Frame7"] = Instance.new("Frame");
	["_UICorner11"] = Instance.new("UICorner");
	["_StrawLogo1"] = Instance.new("ImageLabel");
	["_UICorner12"] = Instance.new("UICorner");
	["_TextLabel2"] = Instance.new("TextLabel");
	["_UICorner13"] = Instance.new("UICorner");
}

-- Properties:

Converted["_ScreenGui"].Parent = game:GetService("CoreGui")

Converted["_Frame"].BackgroundColor3 = Color3.fromRGB(186, 83, 237)
Converted["_Frame"].BorderColor3 = Color3.fromRGB(255, 255, 0)
Converted["_Frame"].BorderSizePixel = 0
Converted["_Frame"].Position = UDim2.new(0.228360951, 0, 0.333333343, 0)
Converted["_Frame"].Size = UDim2.new(0, 362, 0, 173)
Converted["_Frame"].Parent = Converted["_ScreenGui"]
Converted["_Frame"].Active = true
Converted["_Frame"].Draggable = true
Converted["_Frame"].Visible = true

Converted["_Frame1"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame1"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame1"].BorderSizePixel = 0
Converted["_Frame1"].Position = UDim2.new(0.00821917783, 0, 0.0159820374, 0)
Converted["_Frame1"].Size = UDim2.new(0, 356, 0, 167)
Converted["_Frame1"].Parent = Converted["_Frame"]

Converted["_UICorner"].Parent = Converted["_Frame1"]

Converted["_StrawLogo"].Image = "rbxassetid://17314862794"
Converted["_StrawLogo"].BackgroundColor3 = Color3.fromRGB(206, 119, 230)
Converted["_StrawLogo"].BorderColor3 = Color3.fromRGB(240, 128, 128)
Converted["_StrawLogo"].BorderSizePixel = 0
Converted["_StrawLogo"].Position = UDim2.new(0.0337078646, 0, 0.107784428, 0)
Converted["_StrawLogo"].Size = UDim2.new(0, 90, 0, 90)
Converted["_StrawLogo"].Name = "StrawLogo"
Converted["_StrawLogo"].Parent = Converted["_Frame1"]

Converted["_UICorner1"].Parent = Converted["_StrawLogo"]

Converted["_Frame2"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame2"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame2"].BorderSizePixel = 0
Converted["_Frame2"].Position = UDim2.new(0.351123601, 0, 0.0479041934, 0)
Converted["_Frame2"].Size = UDim2.new(0, 222, 0, 110)
Converted["_Frame2"].Parent = Converted["_Frame1"]

Converted["_UICorner2"].Parent = Converted["_Frame2"]

Converted["_Time"].Font = Enum.Font.SourceSansBold
Converted["_Time"].Text = "Time :"
Converted["_Time"].TextColor3 = Color3.fromRGB(17, 189, 43)
Converted["_Time"].TextSize = 14
Converted["_Time"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Time"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Time"].BorderSizePixel = 0
Converted["_Time"].Position = UDim2.new(0.103603601, 0, 0.145454541, 0)
Converted["_Time"].Size = UDim2.new(0, 175, 0, 40)
Converted["_Time"].Name = "Time"
Converted["_Time"].Parent = Converted["_Frame2"]
function UpdateTime()
    local GameTime = math.floor(workspace.DistributedGameTime+0.5)
    local Hour = math.floor(GameTime/(60^2))%24
    local Minute = math.floor(GameTime/(60^1))%60
    local Second = math.floor(GameTime/(60^0))%60
    Converted["_Time"].Text = "Hours : "..Hour.." Minute : "..Minute.." Second : "..Second
    end
    spawn(function()
    while task.wait() do
    pcall(function()
    UpdateTime()
    end)
    end
    end)
---------------------------------------------------------
Converted["_TextLabel"].Font = Enum.Font.SourceSansBold
Converted["_TextLabel"].Text = "Text :"
Converted["_TextLabel"].TextColor3 = Color3.fromRGB(17, 189, 43)
Converted["_TextLabel"].TextSize = 14
Converted["_TextLabel"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_TextLabel"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_TextLabel"].BorderSizePixel = 0
Converted["_TextLabel"].Position = UDim2.new(0.103603601, 0, 0.472727269, 0)
Converted["_TextLabel"].Size = UDim2.new(0, 175, 0, 40)
Converted["_TextLabel"].Parent = Converted["_Frame2"]
spawn(function()
    while wait() do
        pcall(function()
            local count10 = 0
            local count = 0
            for i,v in pairs(game.workspace:GetChildren()) do
                if string.find(v.Name,"Chest") and v:IsA("Part") then
                    count10 = count10 + 1
                end
            end
            Converted["_TextLabel"].Text = "Total Chest In Server :".." "..count10
        end)
    end
end)

---------------------------------------------------------
Converted["_Frame3"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame3"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame3"].BorderSizePixel = 0
Converted["_Frame3"].Position = UDim2.new(0.0337078646, 0, 0.688622773, 0)
Converted["_Frame3"].Size = UDim2.new(0, 340, 0, 52)
Converted["_Frame3"].Parent = Converted["_Frame1"]

Converted["_UICorner3"].Parent = Converted["_Frame3"]

Converted["_Frame4"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame4"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame4"].BorderSizePixel = 0
Converted["_Frame4"].Position = UDim2.new(0.0617647059, 0, 0.0769230798, 0)
Converted["_Frame4"].Size = UDim2.new(0, 120, 0, 43)
Converted["_Frame4"].Parent = Converted["_Frame3"]

Converted["_UICorner4"].Parent = Converted["_Frame4"]

Converted["_Stop"].Font = Enum.Font.SourceSansBold
Converted["_Stop"].Text = "Stop"
Converted["_Stop"].TextColor3 = Color3.fromRGB(211, 38, 237)
Converted["_Stop"].TextSize = 14
Converted["_Stop"].BackgroundColor3 = Color3.fromRGB(220.00001728534698, 220.00001728534698, 220.00001728534698)
Converted["_Stop"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Stop"].BorderSizePixel = 0
Converted["_Stop"].Position = UDim2.new(-0.0166666675, 0, 0.0930232555, 0)
Converted["_Stop"].Size = UDim2.new(0, 122, 0, 34)
Converted["_Stop"].Name = "Stop"
Converted["_Stop"].Parent = Converted["_Frame4"]
Converted["_Stop"].MouseButton1Down:Connect(function()
    _G.Start_Farm_Chest = false
    _G.SetupTeam = false
end)
---------------------------------------------------------
Converted["_UICorner5"].Parent = Converted["_Stop"]
Converted["_Frame5"].BackgroundColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame5"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Frame5"].BorderSizePixel = 0
Converted["_Frame5"].Position = UDim2.new(0.579411745, 0, 0.0769230798, 0)
Converted["_Frame5"].Size = UDim2.new(0, 120, 0, 43)
Converted["_Frame5"].Parent = Converted["_Frame3"]
---------------------------------------------------------
Converted["_UICorner6"].Parent = Converted["_Frame5"]
Converted["_Start"].Font = Enum.Font.SourceSansBold
Converted["_Start"].Text = "Start"
Converted["_Start"].TextColor3 = Color3.fromRGB(211, 38, 237)
Converted["_Start"].TextSize = 14
Converted["_Start"].BackgroundColor3 = Color3.fromRGB(220.00001728534698, 220.00001728534698, 220.00001728534698)
Converted["_Start"].BorderColor3 = Color3.fromRGB(145, 6, 214)
Converted["_Start"].BorderSizePixel = 0
Converted["_Start"].Position = UDim2.new(-0.0166666675, 0, 0.0930232555, 0)
Converted["_Start"].Size = UDim2.new(0, 122, 0, 34)
Converted["_Start"].Name = "Start"
Converted["_Start"].Parent = Converted["_Frame5"]
Converted["_Start"].MouseButton1Down:Connect(function()
    _G.Start_Farm_Chest = true
    _G.SetupTeam = true
end)
--------------------------------------------------------
game:GetService("Players").LocalPlayer.Idled:connect(function()
    game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
    wait(1)
    game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)
spawn(function()
	while task.wait() do
	if _G.SetupTeam then
			local ohString1 = "SetTeam"
			local ohString2 = "Pirates"
			game:GetService("ReplicatedStorage").Remotes.CommF_:InvokeServer(ohString1, ohString2)
    end
	end
	end)
    
    function thisCode()
        repeat task.wait() until game:IsLoaded()
        local PlaceID = game.PlaceId
        local AllIDs = {}
        local foundAnything = ""
        local actualHour = os.date("!*t").hour
        local Deleted = false
        local File = pcall(function()
            AllIDs = game:GetService('HttpService'):JSONDecode(readfile("NotSameServers.json"))
        end)
        if not File then
            table.insert(AllIDs, actualHour)
            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
        end
        function TPReturner()
            local Site;
            if foundAnything == "" then
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100'))
            else
                Site = game.HttpService:JSONDecode(game:HttpGet('https://games.roblox.com/v1/games/' .. PlaceID .. '/servers/Public?sortOrder=Asc&limit=100&cursor=' .. foundAnything))
            end
            local ID = ""
            if Site.nextPageCursor and Site.nextPageCursor ~= "null" and Site.nextPageCursor ~= nil then
                foundAnything = Site.nextPageCursor
            end
            local num = 0;
            for i,v in pairs(Site.data) do
                local Possible = true
                ID = tostring(v.id)
                if tonumber(v.maxPlayers) > tonumber(v.playing) then
                    for _,Existing in pairs(AllIDs) do
                        if num ~= 0 then
                            if ID == tostring(Existing) then
                                Possible = false
                            end
                        else
                            if tonumber(actualHour) ~= tonumber(Existing) then
                                local delFile = pcall(function()
                                    delfile("NotSameServers.json")
                                    AllIDs = {}
                                    table.insert(AllIDs, actualHour)
                                end)
                            end
                        end
                        num = num + 1
                    end
                    if Possible == true then
                        table.insert(AllIDs, ID)
                        wait()
                        pcall(function()
                            writefile("NotSameServers.json", game:GetService('HttpService'):JSONEncode(AllIDs))
                            wait()
                            game:GetService("TeleportService"):TeleportToPlaceInstance(PlaceID, ID, game.Players.LocalPlayer)
                        end)
                        wait(4)
                    end
                end
            end
        end
        function Teleport()
            while wait() do
                pcall(function()
                    TPReturner()
                    if foundAnything ~= "" then
                        TPReturner()
                    end
                end)
            end
        end
        local veryImportantWaitTime = 0.5
        task.spawn(function()
            while task.wait(veryImportantWaitTime) do
                pcall(function()
                    for i,v in pairs(game.CoreGui:GetDescendants()) do
                        pcall(function()
                            if string.find(v.Name,"ErrorMessage") then
                                if string.find(v.Text,"Security kick") then
                                    veryImportantWaitTime = 1e9
                                    Teleport()
                                end
                            end
                        end)
                    end
                end)
            end
        end)
    
        task.spawn(function()
            while true do
                if _G.Start_Farm_Chest == true then
                    local hasChar = game.Players.LocalPlayer:FindFirstChild("Character")
                    if not game.Players.LocalPlayer.Character then
            
                    else
                        local hasCrewTag = game.Players.LocalPlayer.Character:FindFirstChild("CrewBBG",true)
                        if hasCrewTag then hasCrewTag:Destroy() end
                        local hasHumanoid = game.Players.LocalPlayer.Character:FindFirstChild("Humanoid")
                        if hasHumanoid then
                            local Chest = game.Workspace:FindFirstChild("Chest4") or game.Workspace:FindFirstChild("Chest3") or game.Workspace:FindFirstChild("Chest2") or game.Workspace:FindFirstChild("Chest1") or game.Workspace:FindFirstChild("Chest")
                            
                            if Chest then
                                game.Players.LocalPlayer.Character:PivotTo(Chest:GetPivot())
                                firesignal(Chest.Touched,game.Players.LocalPlayer.Character.HumanoidRootPart)
                            else
                                Teleport()
                                break
                            end
                        end 
                    end
                end
                task.wait()
            end
        end)
    end
    spawn(function()
        while wait() do
        for i,v in pairs(game.Players:GetPlayers()) do
            if v.Name == "red_game43" or v.Name == "rip_indra" or v.Name == "Axiore" or v.Name == "Polkster" or v.Name == "wenlocktoad" or v.Name == "Daigrock" or v.Name == "toilamvidamme" or v.Name == "oofficialnoobie" or v.Name == "Uzoth" or v.Name == "Azarth" or v.Name == "arlthmetic" or v.Name == "Death_King" or v.Name == "Lunoven" or v.Name == "TheGreateAced" or v.Name == "rip_fud" or v.Name == "drip_mama" or v.Name == "layandikit12" or v.Name == "Hingoi" then
                Hop()
                end
            end
        end
    end)

    spawn(function()
        while wait() do
        if _G.Stop_If_Has_Items then
            if game.Players.LocalPlayer.Backpack:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Character:FindFirstChild("Fist of Darkness") or game.Players.LocalPlayer.Backpack:FindFirstChild("God's Chalice") or game.Players.LocalPlayer.Character:FindFirstChild("God's Chalice") then
                _G.Start_Farm_Chest = false
                _G.SetupTeam = false
                end
            end
        end
    end)

    thisCode()

    join = game.Players.localPlayer.Neutral == false
    if _G.JoinTeam == nil then
        _G.JoinTeam = "Pirates"
    end
    _G.JoinTeam = "Marines"
    if (_G.JoinTeam == "Pirates" or _G.JoinTeam == "Marines") and not join then
        repeat wait()
            pcall(function()
                join = game.Players.localPlayer.Neutral == false
                if _G.JoinTeam == "Pirates" then
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Pirates.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                elseif _G.JoinTeam == "Marines" then
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                else
                    for i,v in pairs({"MouseButton1Click", "MouseButton1Down", "Activated"}) do
                        for i,v in pairs(getconnections(game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Container.Marines.Frame.ViewportFrame.TextButton[v])) do
                            v.Function()
                        end
                    end
                end
            end)
        until join == true
        game:GetService("Players").LocalPlayer.PlayerGui.Main.ChooseTeam.Visible = true
    end

--// Flag Player
function AntiBan()
    for i,v in pairs(game:GetService("Players").LocalPlayer.Character:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "General" or v.Name == "Shiftlock"  or v.Name == "FallDamage" or v.Name == "4444" or v.Name == "CamBob" or v.Name == "JumpCD" or v.Name == "Looking" or v.Name == "Run" then
                v:Destroy()
            end
        end
     end
     for i,v in pairs(game:GetService("Players").LocalPlayer.PlayerScripts:GetDescendants()) do
        if v:IsA("LocalScript") then
            if v.Name == "RobloxMotor6DBugFix" or v.Name == "Clans"  or v.Name == "Codes" or v.Name == "CustomForceField" or v.Name == "MenuBloodSp"  or v.Name == "PlayerList" then
                v:Destroy()
            end
        end
     end
    end
    AntiBan()
--------------------------------------------------------------------------------------------------------------------------------------------
--// Anti AFK
game:GetService("Players").LocalPlayer.Idled:connect(function()
	game:GetService("VirtualUser"):Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	wait(1)
	game:GetService("VirtualUser"):Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
end)