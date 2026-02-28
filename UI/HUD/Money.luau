local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)
local e = React.createElement

function Money(props)
	return e("TextLabel", {
		Text = "Money: " .. props.amount,
		TextScaled = true,
		Size = UDim2.fromScale(0.2, 0.1),
		Position = UDim2.fromScale(0.1, 0.85),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundTransparency = 1,
		TextColor3 = Color3.fromRGB(0, 255, 0),
	}, {})
end

return Money
