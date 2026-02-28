local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(ReplicatedStorage.Packages.react)
local Menu = require(script.Parent.Menu)
local Clicker = require(ReplicatedStorage.UI.HUD.Clicker)
local Money = require(ReplicatedStorage.UI.HUD.Money)

local e = React.createElement

local function RootUI()
	local shown, setShown = React.useState(true)
	local money, setMoney = React.useState(0)

	return e(React.Fragment, nil, {
		Menu = shown and e(Menu, {
			onStart = function()
				setShown(false)
			end,
		}) or nil,

		Clicker = not shown and e(Clicker, {
			updateMoney = function(newAmount)
				setMoney(newAmount)
			end,
		}),

		Money = not shown and e(Money, {
			amount = money,
		}),
	})
end

return RootUI
