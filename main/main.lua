local module = {}
local function detectAdonis()
        for i, v in pairs(game.ReplicatedStorage:GetChildren()) do
        if v:IsA("RemoteEvent") then
            if v:FindFirstChild("__FUNCTION") then
                v:Destroy()
				local LocalPlayer = game.Players.LocalPlayer
	local oldhmmi
	local oldhmmnc
	oldhmmi = hookmetamethod(game, "__index", function(self, method)
		if self == LocalPlayer and string.lower(method) == "kick" then
			return error("Expected ':' not '.' calling member function Kick", 2)
		end
		return oldhmmi(self, method)
	end)
	oldhmmnc = hookmetamethod(game, "__namecall", function(self, ...)
		if self == LocalPlayer and string.lower(getnamecallmethod()) == "kick" then
			return wait(inf)
		end
		return oldhmmnc(self, ...)
	end)
				                StarterGui:SetCore("SendNotification", {
		Title = "JBX Slash",
		Text = "Anti-Kick script loaded!",
		Duration = 3,
	})
            end
        end
    end
	
end


function module:TryToDisable()
detectAdonis()
end

end
