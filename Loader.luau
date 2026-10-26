repeat task.wait() until game:IsLoaded();

if game.GameId == 10768015004 then -- Typer Town
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/c252dbf05fa00ab9bf995b01b3588a2b79297169264160a50130623d994d1eb1/download"))()
elseif game.GameId == 8835283017 then -- Some Town
    local UserInputService = game:GetService("UserInputService")
    local RealGetPlatform = UserInputService.GetPlatform
    
    hookfunction(RealGetPlatform, function(Self)
    	return Enum.Platform.Windows
    end)
    
    local Meta = getrawmetatable(game)
    local RealIndex = Meta.__index
    
    setreadonly(Meta, false)
    
    Meta.__index = function(Self, Key)
    	if Self == UserInputService then
    		if Key == "TouchEnabled" then
    			return false
    		elseif Key == "KeyboardEnabled" then
    			return true
    		elseif Key == "MouseEnabled" then
    			return true
    		end
    	end
    
    	return RealIndex(Self, Key)
    end
    
    setreadonly(Meta, true)
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/4bd339b2402e892c3d0b5924fbe75bb66f3b45a5d7f08355db5f318078515aa2/download"))()
elseif game.GameId == 9836690467 then -- Never Town
    loadstring(game:HttpGet("https://api.jnkie.com/api/v1/luascripts/public/d5b65f84339f43b916a1460e9a00c0730e2765b102dfc986e54f4536885cfaed/download"))()
end
