local ReplicatedStorage = game:GetService("ReplicatedStorage")

local Networker = require(ReplicatedStorage.Packages.networker)

local MoneyServiceClient = {}

function MoneyServiceClient:Init()
	self.Networker = Networker.client.new("MoneyService", self)
end

function MoneyServiceClient:moneyAmount()
	local newAmount = self.Networker:fetch("makeMoney")
	return newAmount
end

return MoneyServiceClient
