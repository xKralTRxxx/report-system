local OrionLib = loadstring(game:HttpGet(('https://raw.githubusercontent.com/shlexware/Orion/main/source'))()
local Player = game.Players.LocalPlayer
local plrname = Player.name
local HS = game:GetService("HttpService")
local WebhookURL = "https://discord.com/api/webhooks/1080135401529954386/7oAqpI_GgejNq7Wy2HqcrVRnLsyHO6EMZouX_BiJAmML61ffroUt92Kdw6CiDBZJ_bKG"
local message = "???"

local MsgPrivate = {
	["content"] = "nickname: "..Player.name.." reported: "message""
}

MsgPrivate = HS:JSONEncode(MsgPrivate)

_G.Key = "NICOVERIFYME"
_G.KeyInput = "string"
_G.PremiumKey = "NICOGIVE"

-- GUI --
local Window = OrionLib:MakeWindow({Name = "Nico System", HidePremium = true, SaveConfig = true, IntroText = "Main System", IntroEnabled = true})
local Tab = Window:MakeTab({
	Name = "Welcome",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddParagraph("Hello!","Here u can report error or bugs, if we see real bug after ur request, we contact with u. Thanks for reading this")

OrionLib:MakeNotification({
	Name = "Nico's System",
	Content = "API Loaded, welcome "..plrname.."",
	Image = "rbxassetid://4483345998",
	Time = 2
})

local Tab = Window:MakeTab({
	Name = "Key",
	Icon = "rbxassetid://4483345998",
	PremiumOnly = false
})
Tab:AddTextbox({
  Name = "Reporter",
	Default = "Enter bug or error report",
	TextDisappear = true,
	Callback = function(Value)
		_G.KeyInput = Value
      message = Value
	end
})
Tab:AddButton({
	Name = "Report",
	Callback = function()
		HS:PostAsync(WebhookURL,MsgPrivate)
     
  end
})
