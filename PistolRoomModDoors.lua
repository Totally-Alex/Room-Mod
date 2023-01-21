local function setup(room)
    for _, v in pairs(room:GetDescendants()) do
        if v.Name=="Table" then
        local FakeDoor_Hotel = workspace.CurrentRooms[game.ReplicatedStorage.GameData.LatestRoom.Value]:FindFirstChild("FakeDoor_Hotel", true)
        local newdoor = FakeDoor_Hotel.FakeDoor.CFrame
        local model = game:GetObjects("rbxassetid://12227706620")[1]
        model.Parent = workspace
        model:SetPrimaryPartCFrame(newdoor)
        FakeDoor_Hotel:Destroy()
        wait(0.1)
        model.Pistol_Part.Part.ProximityPrompt.Triggered:Connect(function()
        firesignal(game.ReplicatedStorage.Bricks.Caption.OnClientEvent, "It's a gun. Here you go.")
		local Item = game:GetObjects("rbxassetid://8640678553")[1]
Item.Parent = game.Players.LocalPlayer.Backpack
        end)
    end
end
end

for _, room in pairs(workspace.CurrentRooms:GetChildren()) do setup(room) end 
workspace.CurrentRooms.ChildAdded:Connect(setup)