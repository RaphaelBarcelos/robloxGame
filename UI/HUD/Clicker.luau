local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)
local MoneyServiceClient = require(ReplicatedStorage.Shared.Services.MoneyService.MoneyServiceClient)
local e = React.createElement

local function Clicker(props)
	return e("TextButton", {
		Text = "Click!",
		TextScaled = true,
		Size = UDim2.fromScale(0.2, 0.1),
		Position = UDim2.fromScale(0.5, 0.85),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(255, 255, 255),
		[React.Event.Activated] = function()
			local newAmount = MoneyServiceClient:moneyAmount()
			props.updateMoney(newAmount)
		end,
	}, {})
end

return Clicker
