local ReplicatedStorage = game:GetService("ReplicatedStorage")
local React = require(ReplicatedStorage.Packages.react)

local e = React.createElement

local function Menu(props)
	return e("Frame", {
		Size = UDim2.fromScale(0.5, 0.5),
		Position = UDim2.fromScale(0.5, 0.5),
		AnchorPoint = Vector2.new(0.5, 0.5),
		BackgroundColor3 = Color3.fromRGB(50, 50, 50),
	}, {
		e("TextLabel", {
			Text = "Clicker Simulator",
			Size = UDim2.fromScale(1, 0.2),
			Position = UDim2.fromScale(0, 0),
			BackgroundTransparency = 1,
			TextScaled = true,
			TextColor3 = Color3.fromRGB(255, 255, 255),
		}, {
			e("UIStroke", {
				Color = Color3.fromRGB(0, 0, 0),
				Thickness = 2,
			}),
		}),
		e("TextButton", {
			Text = "Start Game",
			Size = UDim2.fromScale(0.8, 0.2),
			Position = UDim2.fromScale(0.1, 0.4),
			BackgroundColor3 = Color3.fromRGB(70, 70, 70),
			TextScaled = true,
			TextColor3 = Color3.fromRGB(255, 255, 255),
			[React.Event.MouseButton1Click] = function()
				if props.onStart then
					props.onStart()
				end
			end,
		}, {
			e("UIStroke", {
				Color = Color3.fromRGB(0, 0, 0),
				Thickness = 2,
			}),
		}),
	})
end

return Menu
