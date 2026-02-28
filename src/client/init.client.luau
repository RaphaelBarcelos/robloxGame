local ReplicatedStorage = game:GetService("ReplicatedStorage")
local MoneyServiceClient = require(ReplicatedStorage.Shared.Services.MoneyService.MoneyServiceClient)
local StartMenu = require(ReplicatedStorage.UI.Menus.StartMenu)

MoneyServiceClient:Init()
StartMenu()
