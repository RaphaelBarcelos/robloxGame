local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Networker = require(ReplicatedStorage.Packages.networker)

local MoneyServiceServer = {}

local money = 0

function MoneyServiceServer:Init()
	self.Networker = Networker.server.new("MoneyService", MoneyServiceServer, {
		self.makeMoney,
	})
end

function MoneyServiceServer.makeMoney(player)
	print("[MoneyServiceServer] Gerando Dinheiro...", player.Name)
	money += 1
	return money
end

function MoneyServiceServer:getMoney()
	return money
end

return MoneyServiceServer
