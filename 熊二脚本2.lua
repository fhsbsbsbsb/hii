local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source')))()
 
local Window = OrionLib:MakeWindow({Name = "熊二脚本", HidePremium = false, SaveConfig = true, ConfigFolder = "熊二脚本"})
 
OrionLib:MakeNotification({
	Name = "欢迎使用熊二脚本",
	Content =  "当前游戏ID为:" .. game.GameId .. ".",
	Image = "rbxassetid://7734068321",
	Time = 5
})

local Tab = Window:MakeTab({
	Name = "通用",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
 
Tab:AddTextbox({ 
    Name = "跳跃高度设置", 
    Default = "", 
    TextDisappear = true, 
    Callback = function(Value) 
        game.Players.LocalPlayer.Character.Humanoid.JumpPower = Value 
    end 
 }) 
 
Tab:AddTextbox({ 
    Name = "移动速度设置", 
    Default = "", 
    TextDisappear = true, 
    Callback = function(Value) 
        game.Players.LocalPlayer.Character.Humanoid.WalkSpeed = Value 
    end 
 }) 
 
Tab:AddButton({
	Name = "飞行V3（隐藏）",
	Callback = function()
    loadstring(game:HttpGet("https://pastebin.com/raw/Z5wqYMDx"))()
  	end    
})
 
 Tab:AddButton({
	Name = "光影",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/MZEEN2424/Graphics/main/Graphics.xml"))()
  	end    
})

Tab:AddToggle({
	Name = "夜视",
	Default = false,
	Callback = function(Value)
		if Value then
		    game.Lighting.Ambient = Color3.new(1, 1, 1)
		else
		    game.Lighting.Ambient = Color3.new(0, 0, 0)
		end
	end
})

Tab:AddToggle({
	Name = "穿墙",
	Default = false,
	Callback = function(Value)
	local Workspace = game:GetService("Workspace")
local Players = game:GetService("Players")
local Clipon = true
 
Stepped = game:GetService("RunService").Stepped:Connect(function()
	if not Clipon == false then
		for a, b in pairs(Workspace:GetChildren()) do
        if b.Name == Players.LocalPlayer.Name then
        for i, v in pairs(Workspace[Players.LocalPlayer.Name]:GetChildren()) do
        if v:IsA("BasePart") then
        v.CanCollide = false
        end end end end
	else
		Stepped:Disconnect()
	end
end)
  	end    
})

local Tab = Window:MakeTab({
	Name = "脚本",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})

Tab:AddButton({
	Name = "阿尔宙斯UI",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/AZYsGithub/chillz-workshop/main/Arceus%20X%20V3"))()
  	end    
})

Tab:AddButton({
	Name = "进击的僵尸",
	Callback = function()
    loadstring(game:HttpGet("https://raw.githubusercontent.com/GamingScripter/Darkrai-X/main/Games/Zombie%20Attack"))()
  	end    
})

Tab:AddButton({
	Name = "俄亥俄州指令(龙叔制作)",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/longshulol/long/main/longshu/Ohio", true))() 
end
})

Tab:AddButton({
	Name = "战斗勇士",
	Callback = function()
loadstring(game:HttpGet("https://raw.githubusercontent.com/frkfx/Combat-Warriors/main/Script"))()
	end
})

Tab:AddButton({
	Name = "破坏者迷团",
	Callback = function()
loadstring(game:GetObjects("rbxassetid://4001118261")[1].Source)()
	end
})

Tab:AddButton({
	Name = "巨人模拟器",
	Callback = function()
loadstring(game:HttpGet('https://raw.githubusercontent.com/brownfieldd00/Roblox/main/Games/Giant%20Simulator%20Auto%20Rebirth.lua'))()
	end
})
