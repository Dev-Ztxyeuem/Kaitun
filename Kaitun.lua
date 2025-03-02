if not game:IsLoaded() then repeat game.Loaded:Wait() until game:IsLoaded() end

——-Tween

getgenv().Config = getgenv().Config or {
      ["Process"] =
      {
         ["Start"] = true, 
         ["Hunter Quest"] = true, -- Đ Làm Player Hunter
         ["Saber"] = true, -- Tự Làm Puzzle Của Saber (Lấy Luôn)
         ["Bartilo"] = true, -- Tự Làm Nhiệm Vụ Bartilo
         ["V2 Race"] = true, -- Tự Up Tộc v2 (Nhớ Bật Auto Bartilo Trước)
         ["V3 Race"] = true, -- tu up v3  (mink/sky/human) (ko bat auto v2 la ia nha)
         ["Force Rengoku"] = false,
         ["Cursed Dual Katana"] = true,
         ["Hop For Rip Indra"] = true,
         ["Auto Katakuri While Maxed"] = -- Tự Đi Giết Kata Khi Max(Kiếm Fragments)
         {
            ["Enable"] = true, -- Bật or Tắt
            ["Until"] = 30000 -- Treo Cho Đến khi đc số frag m ưng
         },
         ["Auto Bone While Maxed"] =
         {
            ["Enable"] = true, -- Auto Bone Khi Max (Cái Này Sẽ Chạy Sau Auto Katakuri)
         },
         ["Hop For Swan Quest"] = false, -- Tự Hop Kiếm fruit 1m để lm swan quest 
         ["Auto Buy 3 Legendary Sword"] = true, 
         ["Auto Buy Haki Color"] = true, 
         
         ["Delay On Server While Swan Hop"] = 15, -- giay, tgian doi trong moi server trc khi hop swanQuest 
         ["Auto Awakening Fruit"] = true, -- Tự Awaken Fruit 
         ["Lock Awakening Fruit"] = true,
         ["Auto 600 Mastery All Weapon After Done All"] = true, -- tự farm 600mas all item khi xong blacksmith
         ["Auto Do Lever Stuff"] = true, -- tu gat can neu co migare 
         ["Auto Hop"] =
         {
           ["Enable"] = true,
           ["Delay"] = 400,
         },
      ["Fruit"] =
      {
         ["Snipe"] =
         { -- tự mua khi shop bán df j đó
            "Dough-Dough", "Meme-Meme"
         },
         ["Random Fruit"] = true, --  Wtf Ko Bật
         ["Auto Loot Spawn Fruit"] = true, -- Wtf Ko Bật
         ["Auto Fruit Event"] = true, -- Tự đi cuỗm factory, pirate raid
         ["Auto Raid While Cant Store"] = true, -- nếu k ăn và k store dc
         ["Fragments Limit By Fruit Loot Raid"] = 30000, -- khi frag m lớn hơn thì sẽ k raid nx
         ["Eat While Cant Store"] = true -- tự hốc khi đéo ăn dc
      },
      ["Misc"] =
      {
         ["Webhook"] =
         { -- Discord Webhook
            ["Url"] = "https://discord.com/api/webhooks/1148666615026688071/fHjKtl_2r7KXDPTd3k9pCTJ4fSZZYWxcByXYeMNt8iu4yFaumkO-kEp8qdquOQ5Ux2Tq", -- Webhook Của Mày
            ["Enable"] = true, -- Bật or Tẵt
            ["Send While"] =
            { --Gửi Những J Vào Webhook
               ["Account Status"] = true , --Thông Tin Acc
               ["Delay"] = 120,
              -- Chờ Bao Nhiêu R Gửi? (giây)
               
            }
         },
         ["White Screen"] = false,

         ["Fast Attack Delay"] = 0.1,
         ["Remove Terrain"] = false 
      }
   }
   

function vcl(a, b) 
  if a: FindFirstChild"Level" then 
    return a.Level.Value 
   else 
     return b or 0 
  end 
end 

function c()
            return getgenv().Config
         end

function equip(tooltip)
               local player = game.Players.LocalPlayer
               local character = player.Character or player.CharacterAdded:Wait()
               for _, item in pairs(player.Backpack:GetChildren()) do
                  if item:IsA("Tool") and item.ToolTip == tooltip then
                     local humanoid = character:FindFirstChildOfClass("Humanoid")
                     if humanoid and not humanoid:IsDescendantOf(item) then
                        game.Players.LocalPlayer.Character.Humanoid:EquipTool(item)
                        return item
                     end
                  end
               end


function NameMelee(a)
            a = a or false
            for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
            for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Melee" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
         end
         function NameDf(a)
            a = a or false
            for r, v in next, game:GetService("Players").LocalPlayer.Backpack:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end
            for r, v in next, game:GetService("Players").LocalPlayer.Character:GetChildren() do
               if v:IsA("Tool") and v.ToolTip == "Blox Fruit" then
                  if a then
                     return v
                  else
                     return v.Name
                  end
               end
            end 
            return "Bomb-Bomb"
         end
function CheckDoubleQuest()

            local a = {}
            for r, v in pairs(Q) do
               for M, N in pairs(v) do
                  local U = N.LevelReq
                  for O, P in pairs(N.Task) do
                     if O == Mob1 then
                        for _, a0 in next, v do
                           if a0.LevelReq <= game.Players.LocalPlayer.Data.Level.Value and a0.Name ~= "Town Raid" then
                              for a1, a2 in next, a0.Task do
                                 if a2 > 1 then
                                    table.insert(a, a1)
                                 end
                              end
                           end
                        end
                     end
                  end
               end
            end
            return a 
         end
         local a3 = require(game.ReplicatedStorage:WaitForChild("GuideModule"))
         function CheckQuestData()
            for r, v in next, a3.Data do
               if r == "QuestData" then
                  return true
               end
            end
            return false
         end

         function CheckNameDoubleQuest()
            local a
            if CheckQuestData() then
               for r, v in next, a3.Data.QuestData.Task do
                  a = r
               end
            end
            return a
         end
         function CheckNameDoubleQuest2()
            local a
            local a4 = {}
            if CheckQuestData() then
               for r, v in next, a3.Data.QuestData.Task do
                  a = r
                  table.insert(a4, r)
               end
            end
            return a4
         end

         function CheckDoubleQuest2()
            checkq()
            local a5 = {}
            if
            game.Players.LocalPlayer.Data.Level.Value >= 10 and CheckQuestData() and
            CheckNameDoubleQuest() == Mob1 and
            #CheckNameDoubleQuest() > 2
            then
               for r, v in pairs(Q) do
                  for M, N in pairs(v) do
                     for O, P in pairs(N.Task) do
                        if tostring(O) == Mob1 then
                           for a6, a7 in next, v do
                              for a8, a9 in next, a7.Task do
                                 if a8 ~= Mob1 and a9 > 1 then
                                    if a7.LevelReq <= game.Players.LocalPlayer.Data.Level.Value then
                                       a5["Name"] = tostring(a8)
                                       a5["NameQuest"] = r
                                       a5["ID"] = a6
                                    else
                                       a5["Name"] = Mob1
                                       a5["NameQuest"] = Mob2
                                       a5["ID"] = Mob3
                                    end
                                    return a5
                                 end
                              end
                           end
                        end
                     end
                  end
               end
            else
               a5["Name"] = Mob1
               a5["NameQuest"] = Mob2
               a5["ID"] = Mob3
               return a5
            end
            a5["Name"] = Mob1
            a5["NameQuest"] = Mob2
            a5["ID"] = Mob3
            return a5
         end


function getsortedmon()
    local beo = game.Players.LocalPlayer
    local memay = beo.Character:WaitForChild"HumanoidRootPart"
    local chim = workspace.Enemies: GetChildren ()
    local bamaysuccac = {} 
    for i, v in pairs(chim) do 
      if v.Name ~= "PirateBasic" and v.Name ~= "PirateBrigade" and v:FindFirstChild"HumanoidRootPart" then 
        table.insert(bamaysuccac, v) 
       end
      end
    table.sort(bamaysuccac, function(aL, aM)
      
        return beo: DistanceFromCharacter(aL.HumanoidRootPart.Position) < beo: DistanceFromCharacter (aM.HumanoidRootPart.Position) 
    end)
   
   return bamaysuccac

-- return bamaysuccac or game.Workspace.Enemies:GetChildren()
end

function whatismyrace() 
  return game:GetService("Players").LocalPlayer.Data.Race.Value 
end 

         function MobLevel1OrMobLevel2()
            local aa = {}
            for r, v in pairs(getsortedmon()) do
               if
               not table.find(aa, v.Name) and v:IsA("Model") and v.Name ~= "PirateBasic" and
               not string.find(v.Name, "Brigade") and
               v:FindFirstChild("Humanoid") and
               v.Humanoid.Health > 0 and
               v:FindFirstChild("HumanoidRootPart")
               then
                  table.insert(aa, v.Name)
               end
            end
            for r, v in pairs(aa) do
               local ab = v
               
               v = tostring(v:gsub(" %pLv. %d+%p", ""))
               if tostring(v) == CheckNameDoubleQuest() then
                  return tostring(ab)
               end
            end
            return false
         end
         local ad = game.ReplicatedStorage.Remotes["CommF_"]
         raidlist = {}
           for i, v in pairs(require(game:GetService("ReplicatedStorage").Raids).advancedRaids) do 
             table.insert(raidlist, v) 
           end 
           for i, v in pairs(require(game:GetService("ReplicatedStorage").Raids).raids) do 
             table.insert(raidlist, v) 
           end

function GetQuest()
            if game.Players.LocalPlayer.PlayerGui.Main:FindFirstChild("Quest").Visible then
               return
            end
            if not QuestPoint[tostring(CheckDoubleQuest2().NameQuest)] then
               CFrameQuest()
               return
            end
            if
            (QuestPoint[CheckDoubleQuest2().NameQuest].Position -
            game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude <= 8
            then 
              vc = CheckDoubleQuest2()
               ad:InvokeServer("StartQuest", tostring(vc.NameQuest), vc.ID)
               MobDual2 = vc.Name  
            

            else
               QuestCFrame = QuestPoint[CheckDoubleQuest2().NameQuest]
               topos(QuestCFrame) 
               
            end
         end

function gmlp()
               if MobLevel1OrMobLevel2() then
                  
                  return (MobLevel1OrMobLevel2():gsub(" %pLv. %d+%p", "")):gsub(" ", "")
               end
            end

function getMobLoadPos(a)
            for c, d in pairs(game:GetService("Workspace")["_WorldOrigin"].EnemySpawns:GetChildren()) do
           if d.Name == a  then
                  -- warn("Load Mon: "..a.." Load Mob Get: "..d.Name)
                  
     
                     return d.CFrame
                

           end 
            end
            for c, d in pairs(getnilinstances()) do
           if d.Name and string.find(d.Name,a) then
                  -- warn("Load Mon: "..a.." Load Mob Get: "..d.Name)
                  
        
                     return d.CFrame or d.HumanoidRootPart.CFrame
            

           end 
            end
             for i,v in pairs(game.Workspace.Enemies:GetChildren()) do 
               if skidymf(v) and v.Name and string.find(v.Name, a) then
                 return v.HumanoidRootPart.CFrame 
               end 
               end
             for i,v in pairs(game.ReplicatedStorage:GetChildren()) do 
               if skidymf(v) and v.Name and string.find(v.Name, a) then
                 return v.HumanoidRootPart.CFrame or v.CFrame
               end 
               end
            --
            --     for c, d in pairs(game:GetService("Workspace").Enemies:GetChildren()) do
            --         if string.find(d.Name, a) or d.Name == a or string.find(d.Name, a)then
            --
            --             return d.HumanoidRootPart.CFrame
            --         end
            --     end

           
         end


function CheckSea(e) 
              if sussea then 
              if sussea == e then return true end
              else
               if game.PlaceId == 2753915549 then
                  if e == 1 then 
                    sussea = 1
                     return true
                  end
               elseif  game.PlaceId == 4442272183 then
                  if e == 2 then
                    sussea = 2
                     return true
                  end
               elseif  game.PlaceId == 7449423635 then
                  if e == 3 then
                    sussea = 3
                     return true
                  end
               end
               return false
            end
end 

local Q = require(game.ReplicatedStorage.Quests)

         local R = {"BartiloQuest", "Trainees", "MarineQuest", "CitizenQuest"}

         function checkq()
            local T = game.Players.LocalPlayer.Data.Level.Value
            local min = 0
            if T >= 1450 and game.PlaceId == 4442272183 then
               Mob1 = "Water Fighter"
               Mob2 = "ForgottenQuest"
               Mob3 = 2
            elseif  T >= 700 and game.PlaceId == 2753915549 then
               Mob1 = "Galley Captain"
               Mob2 = "FountainQuest"
               Mob3 = 2
            
            
               else
                  for r, v in pairs(Q) do
                     for M, N in pairs(v) do
                        local U = N.LevelReq
                        for O, P in pairs(N.Task) do
                           if T >= U and U >= min and N.Task[O] > 1 and not table.find(R, tostring(r)) then
                              min = U
                              Mob1 = tostring(O)
                              Mob2 = r
                              Mob3 = M
                           end
                        end
                     end
                  end
               end
         end
          
            function CFrameQuest()
               QuestPoses = {}
               for r, v in pairs(getnilinstances()) do
                  if
                  v:IsA("Model") and v:FindFirstChild("Head") and v.Head:FindFirstChild("QuestBBG") and
                  v.Head.QuestBBG.Title.Text == "QUEST" and v.Name ~= "Villager"
                  then
                     QuestPoses[v.Name] = v:WaitForChild"HumanoidRootPart".CFrame * CFrame.new(0, -2, 2)
                  end
               end
               for r, v in pairs(game.Workspace.NPCs:GetDescendants()) do
                  if v.Name == "QuestBBG" and v.Title.Text == "QUEST" and v.Parent.Parent.Name ~= "Villager" then
                     QuestPoses[v.Parent.Parent.Name] = v.Parent.Parent.HumanoidRootPart.CFrame * CFrame.new(0, -2, 2)
                  end
               end
               DialoguesList = {}
               for r, v in pairs(require(game.ReplicatedStorage.DialoguesList)) do
                  DialoguesList[v] = r
               end
               local V = getscriptclosure(game:GetService("Players").LocalPlayer.PlayerScripts.NPC)
               local W = {}
               for k, v in pairs(debug.getprotos(V)) do
                  if #debug.getconstants(v) == 1 then
                     table.insert(W, debug.getconstant(v, 1))
                  end
               end
               local X = false
               local Y = {}
               for k, v in pairs(debug.getconstants(V)) do
                  if type(v) == "string" then
                     if v == "Players" then
                        X = false
                     end
                     if not X then
                        if v == "Blox Fruit Dealer" then
                           X = true
                        end
                     else
                     end
                     if X then
                        table.insert(Y, v)
                     end
                  end
               end
               local Z = {}
               QuestPoint = {}
               for k, v in pairs(Y) do
                  if QuestPoses[v] then
                     Z[W[k]] = Y[k]
                  end
               end
               for r, v in next, Z do
                  QuestPoint[r] = QuestPoses[v]
               end
               QuestPoint["SkyExp1Quest"] =
               CFrame.new(
               -7857.28516,
               5544.34033,
               -382.321503,
               -0.422592998,
               0,
               0.906319618,
               0,
               1,
               0,
               -0.906319618,
               0,
               -0.422592998
               )
            end


   function CheckNearestTeleporter(aI)
local MyLevel = game.Players.LocalPlayer.Data.Level.Value
vcspos = aI.Position
min = math.huge
min2 = math.huge
local y = game.PlaceId
if y == 2753915549 then
    Main = true
elseif y == 4442272183 then
    Dressrosa = true
elseif y == 7449423635 then
   Zou = true
end  
if Zou then
    TableLocations = {
        ["Caslte On The Sea"] = Vector3.new(-5058.77490234375, 314.5155029296875, -3155.88330078125),
        ["Hydra"] = Vector3.new(5661.5302734375, 1013.3587036132812, -334.9619140625),
        ["Mansion"] = Vector3.new(-12463.8740234375, 374.9144592285156, -7523.77392578125),
        ["Great Tree"] = Vector3.new(28282.5703125, 14896.8505859375, 105.1042709350586),
        ["Ngu1"] = Vector3.new(-11993.580078125, 334.7812805175781, -8844.1826171875),
        ["ngu2"] = Vector3.new(5314.58203125, 25.419387817382812, -125.94227600097656)
    }
elseif Dressrosa then
    TableLocations = {
        ["Mansion"] = Vector3.new(-288.46246337890625, 306.130615234375, 597.9988403320312),
        ["Flamingo"] = Vector3.new(2284.912109375, 15.152046203613281, 905.48291015625),
        ["122"] = Vector3.new(923.21252441406, 126.9760055542, 32852.83203125),
        ["3032"] = Vector3.new(-6508.5581054688, 89.034996032715, -132.83953857422)
    }
elseif Main then
    TableLocations = {
        ["1"] = Vector3.new(-7894.6201171875, 5545.49169921875, -380.2467346191406),
        ["2"] = Vector3.new(-4607.82275390625, 872.5422973632812, -1667.556884765625),
        ["3"] = Vector3.new(61163.8515625, 11.759522438049316, 1819.7841796875),
        ["4"] = Vector3.new(3876.280517578125, 35.10614013671875, -1939.3201904296875)
    }
end
TableLocations2 = {}
for r, v in pairs(TableLocations) do
    TableLocations2[r] = (v - vcspos).Magnitude
end
for r, v in pairs(TableLocations2) do
    if v < min then
        min = v
        min2 = v
    end
end
for r, v in pairs(TableLocations2) do
    if v < min then
        min = v
        min2 = v
    end
end
for r, v in pairs(TableLocations2) do
    if v <= min then
        choose = TableLocations[r]
    end
end
min3 = (vcspos - game.Players.LocalPlayer.Character.HumanoidRootPart.Position).Magnitude
if min2 <= min3 then
    return choose
end
end

function requestEntrance(aJ)
args = {"requestEntrance", aJ}
game.ReplicatedStorage.Remotes.CommF_:InvokeServer(unpack(args))
oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
char = game.Players.LocalPlayer.Character.HumanoidRootPart
char.CFrame = CFrame.new(oldcframe.X, oldcframe.Y + 50, oldcframe.Z)
task.wait(0.5)
end

function AntiLowHealth(aK)
game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =
    CFrame.new(
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,
    aK,
    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z
)
wait()
end
TweenSpeed = 300
function topos(aL)
pcall(function()
        if game:GetService("Players").LocalPlayer and game:GetService("Players").LocalPlayer.Character and game:GetService("Players").LocalPlayer.Character:FindFirstChild("Humanoid") and game:GetService("Players").LocalPlayer.Character:FindFirstChild("HumanoidRootPart") and  game:GetService("Players").LocalPlayer.Character.Humanoid.Health > 0 and game:GetService("Players").LocalPlayer.Character.HumanoidRootPart then
            if not TweenSpeed then
                TweenSpeed = 300
            end
            DefualtY = aL.Y
            TargetY = aL.Y
            targetCFrameWithDefualtY = CFrame.new(aL.X, DefualtY, aL.Z)
            targetPos = aL.Position
            oldcframe = game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame
            Distance = (targetPos - game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude
            if Distance <= 300 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = aL
            end
            local aM = CheckNearestTeleporter(aL)
            if aM then
                pcall(function()
                        tween:Cancel()
                    end)
                requestEntrance(aM)
            end
            b1 = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            if IngoreY and (b1.Position - targetCFrameWithDefualtY.Position).Magnitude > 5 then
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,DefualtY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
                local tweenfunc = {}
                local aN = game:service "TweenService"
                local aO =
                    TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = targetCFrameWithDefualtY})
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            else
                local tweenfunc = {}
                local aN = game:service "TweenService"
                local aO =
                    TweenInfo.new((targetPos -game:GetService("Players").LocalPlayer.Character:WaitForChild("HumanoidRootPart").Position).Magnitude /TweenSpeed,Enum.EasingStyle.Linear)
                tween = aN:Create(game:GetService("Players").LocalPlayer.Character["HumanoidRootPart"],aO,{CFrame = aL})
                tween:Play()
                function tweenfunc:Stop()
                    tween:Cancel()
                end
                tween.Completed:Wait()
                game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame =CFrame.new(game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.X,TargetY,game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame.Z)
            end
            if not tween then
                return tween
            end
            return tweenfunc
        end
    end
)
end



