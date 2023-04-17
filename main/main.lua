local module = {}
local function detectAdonis()
    for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if v:IsA("RemoteEvent") then
            if v:FindFirstChild("__FUNCTION") then
                game:GetService("DebrisService"):AddItem(v,0)
                local oldInx 
                oldInx = hookmetamethod(game, "__namecall", newcclosure(function(...)
                local args = {...}
                local self = args[1]
                    if string.lower(tostring(getnamecallmethod())) == "kick" and string.lower(tostring(self)) == string.lower(game.Players.LocalPlayer.Name) then
                        return wait(math.huge)
                    end
                    return oldInx(Self,key)
                end))

                StarterGui:SetCore("SendNotification", {
		Title = "JBX Slash",
		Text = "Anti-Kick script loaded!",
		Icon = "rbxassetid://6238537240",
		Duration = 3,
	})
                return true
            end
        end
    end
    return false
end


function module:TryToDisable()
detectAdonis()
end

end
