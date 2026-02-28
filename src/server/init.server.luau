local ServerScriptService = game:GetService("ServerScriptService")
local MoneyServiceServer = require(ServerScriptService.Server.Services.MoneyService.MoneyServiceServer)

MoneyServiceServer:Init()
