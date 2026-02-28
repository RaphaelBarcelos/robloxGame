local Players = game:GetService("Players")
local ReplicatedStorage = game:GetService("ReplicatedStorage")

local React = require(ReplicatedStorage.Packages.react)
local ReactRoblox = require(ReplicatedStorage.Packages["react-roblox"])
local RootUI = require(ReplicatedStorage.UI.app.RootUI)

return function()
	local player = Players.LocalPlayer
	local playerGui = player:WaitForChild("PlayerGui")
	local container = Instance.new("ScreenGui")
	container.Name = "StartMenu"
	container.ResetOnSpawn = false
	container.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
	container.Parent = playerGui
	local root = ReactRoblox.createRoot(container)
	local app = React.createElement(RootUI)
	root:render(app)
end
