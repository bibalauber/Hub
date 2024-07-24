local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")
local rs = game:GetService("RunService")
local mouse = game:GetService("Players").LocalPlayer:GetMouse()

local Library = {
	Loaded = false
}

function Library:Tween(instance, property, onFinish, timee)
	timee = timee or 0.2
	local tweenInfo = TweenInfo.new(timee, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)
	local tween = game:GetService("TweenService"):Create(instance, tweenInfo, property)
	tween.Completed:Connect(onFinish or function() return end)
	tween:Play()
end
	
function Library:NotificationsSystem()
	local Notifications = {
		
	}
	
	
	
	return Notifications
end

function Library:New(Name, Icon)
	
	local GUI = {
		CurrentTab = nil
	}
	
	-- Main Window
	do
		-- Main
		do
			-- StarterGui.SupabaseUI
			GUI["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
			GUI["1"]["Name"] = [[SupabaseUI]];
			GUI["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;

			-- StarterGui.SupabaseUI.Main
			GUI["2"] = Instance.new("Frame", GUI["1"]);
			GUI["2"]["BorderSizePixel"] = 0;
			GUI["2"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
			GUI["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			GUI["2"]["Size"] = UDim2.new(0, 866, 0, 381);
			GUI["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
			GUI["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["2"]["Name"] = [[Main]];
			GUI["2"]["Visible"] = false
			-- StarterGui.SupabaseUI.Main.DropShadowHolder
			GUI["29"] = Instance.new("Frame", GUI["2"]);
			GUI["29"]["ZIndex"] = 0;
			GUI["29"]["BorderSizePixel"] = 0;
			GUI["29"]["Size"] = UDim2.new(1, 0, 1, 0);
			GUI["29"]["Name"] = [[DropShadowHolder]];
			GUI["29"]["BackgroundTransparency"] = 1;

			-- StarterGui.SupabaseUI.Main.DropShadowHolder.DropShadow
			GUI["2a"] = Instance.new("ImageLabel", GUI["29"]);
			GUI["2a"]["ZIndex"] = 0;
			GUI["2a"]["BorderSizePixel"] = 0;
			GUI["2a"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
			GUI["2a"]["ScaleType"] = Enum.ScaleType.Slice;
			GUI["2a"]["ImageTransparency"] = 0.5;
			GUI["2a"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["2a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			GUI["2a"]["Image"] = [[rbxassetid://6015897843]];
			GUI["2a"]["Size"] = UDim2.new(1, 47, 1, 47);
			GUI["2a"]["BackgroundTransparency"] = 1;
			GUI["2a"]["Name"] = [[DropShadow]];
			GUI["2a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
		end
		
		--TabsHolder
		do
			-- StarterGui.SupabaseUI.Main.TabsHolder
			GUI["3"] = Instance.new("Frame", GUI["2"]);
			GUI["3"]["BorderSizePixel"] = 0;
			GUI["3"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["3"]["Size"] = UDim2.new(0, 60, 1, 0);
			GUI["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["3"]["Name"] = [[TabsHolder]];
			GUI["3"]["BackgroundTransparency"] = 1;

			-- StarterGui.SupabaseUI.Main.TabsHolder.Line
			GUI["4"] = Instance.new("Frame", GUI["3"]);
			GUI["4"]["BorderSizePixel"] = 0;
			GUI["4"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53);
			GUI["4"]["AnchorPoint"] = Vector2.new(1, 0);
			GUI["4"]["Size"] = UDim2.new(0, 1, 1, 0);
			GUI["4"]["Position"] = UDim2.new(1, 0, 0, 0);
			GUI["4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["4"]["Name"] = [[Line]];

			-- StarterGui.SupabaseUI.Main.TabsHolder.Tabs
			GUI["5"] = Instance.new("Frame", GUI["3"]);
			GUI["5"]["BorderSizePixel"] = 0;
			GUI["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["5"]["Size"] = UDim2.new(1, 0, 1, 0);
			GUI["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["5"]["Name"] = [[Tabs]];
			GUI["5"]["BackgroundTransparency"] = 1;

			-- StarterGui.SupabaseUI.Main.TabsHolder.Tabs.UIListLayout
			GUI["6"] = Instance.new("UIListLayout", GUI["5"]);
			GUI["6"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			GUI["6"]["Padding"] = UDim.new(0, 10);
			GUI["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			
			-- StarterGui.SupabaseUI.Main.TabsHolder.Tabs.UIPadding
			GUI["8"] = Instance.new("UIPadding", GUI["5"]);
			GUI["8"]["PaddingTop"] = UDim.new(0, 10);
			GUI["8"]["PaddingRight"] = UDim.new(0, 10);
			GUI["8"]["PaddingLeft"] = UDim.new(0, 10);
			GUI["8"]["PaddingBottom"] = UDim.new(0, 10);
			
			-- StarterGui.SupabaseUI.Main.TabsHolder.Tabs.logo
			GUI["7"] = Instance.new("ImageLabel", GUI["5"]);
			GUI["7"]["BorderSizePixel"] = 0;
			GUI["7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["7"]["Image"] = "rbxassetid://15606171585";
			GUI["7"]["Size"] = UDim2.new(1, 0, 0, 40);
			GUI["7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["7"]["BackgroundTransparency"] = 1;
			GUI["7"]["Name"] = [[logo]];
		end
		
		--TopBar
		do
			-- StarterGui.SupabaseUI.Main.TopBar
			GUI["f"] = Instance.new("Frame", GUI["2"]);
			GUI["f"]["BorderSizePixel"] = 0;
			GUI["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["f"]["Size"] = UDim2.new(1, -60, 0, 50);
			GUI["f"]["Position"] = UDim2.new(0, 60, 0, 0);
			GUI["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["f"]["Name"] = [[TopBar]];
			GUI["f"]["BackgroundTransparency"] = 1;

			-- StarterGui.SupabaseUI.Main.TopBar.Line
			GUI["10"] = Instance.new("Frame", GUI["f"]);
			GUI["10"]["BorderSizePixel"] = 0;
			GUI["10"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53);
			GUI["10"]["AnchorPoint"] = Vector2.new(0, 1);
			GUI["10"]["Size"] = UDim2.new(1, 0, 0, 1);
			GUI["10"]["Position"] = UDim2.new(0, 0, 1, 0);
			GUI["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["10"]["Name"] = [[Line]];

			-- StarterGui.SupabaseUI.Main.TopBar.TextLabel
			GUI["11"] = Instance.new("TextLabel", GUI["f"]);
			GUI["11"]["BorderSizePixel"] = 0;
			GUI["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			GUI["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["11"]["TextSize"] = 25;
			GUI["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			GUI["11"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["11"]["BackgroundTransparency"] = 1;
			GUI["11"]["Size"] = UDim2.new(1, 0, 1, 0);
			GUI["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["11"]["Text"] = Name;

			-- StarterGui.SupabaseUI.Main.TopBar.TextLabel.UIPadding
			GUI["12"] = Instance.new("UIPadding", GUI["11"]);
			GUI["12"]["PaddingLeft"] = UDim.new(0, 15);
		end
		
		--ContentHolder
		do
			-- StarterGui.SupabaseUI.Main.ContentHolder
			GUI["13"] = Instance.new("Frame", GUI["2"]);
			GUI["13"]["BorderSizePixel"] = 0;
			GUI["13"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			GUI["13"]["Size"] = UDim2.new(1, -60, 1, -50);
			GUI["13"]["Position"] = UDim2.new(0, 60, 0, 50);
			GUI["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			GUI["13"]["Name"] = [[ContentHolder]];
			GUI["13"]["BackgroundTransparency"] = 1;
		end
	end
	
	function GUI:NewTab(TabIcon)
		game.ContentProvider:PreloadAsync({tostring(TabIcon)})
		local Tab = {
			Hover = false,
			active = false
		}
		

		do   
			Tab["9"] = Instance.new("ImageLabel", GUI["5"])
			Tab["9"]["Image"] = "http://www.roblox.com/asset/?id=" .. tostring(TabIcon)
			Tab["9"]["BorderSizePixel"] = 0
			Tab["9"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255)
			Tab["9"]["AnchorPoint"] = Vector2.new(0.5, 0.5)
			Tab["9"]["ImageColor3"] = Color3.fromRGB(126, 126, 126)
			Tab["9"]["Size"] = UDim2.new(0, 30, 0, 30)
			Tab["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0)
			Tab["9"]["BackgroundTransparency"] = 1
			Tab["9"]["Name"] = tostring(TabIcon) .. "djckahfcbacub"
			
			Tab["14"] = Instance.new("ScrollingFrame", GUI["13"]);
			Tab["14"]["Active"] = true;
			Tab["14"]["BorderSizePixel"] = 0;
			Tab["14"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Tab["14"]["Name"] = [[AimTab]];
			Tab["14"]["Size"] = UDim2.new(1, 0, 1, 0);
			Tab["14"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["14"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Tab["14"]["ScrollBarThickness"] = 0;
			Tab["14"]["BackgroundTransparency"] = 1;
			Tab["14"]["ScrollingEnabled"] = true;
			
			-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.UIListLayout
			Tab["1a"] = Instance.new("UIListLayout", Tab["14"]);
			Tab["1a"]["Padding"] = UDim.new(0, 10);
			Tab["1a"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.UIPadding
			Tab["1b"] = Instance.new("UIPadding", Tab["14"]);
			Tab["1b"]["PaddingTop"] = UDim.new(0, 10);
			Tab["1b"]["PaddingRight"] = UDim.new(0, 10);
			Tab["1b"]["PaddingLeft"] = UDim.new(0, 10);
			Tab["1b"]["PaddingBottom"] = UDim.new(0, 10);
		end
		
		-- Dont Open this
		do
			function Tab:Activate()
				if not Tab.active then
					if GUI.CurrentTab ~= Tab then
						if GUI.CurrentTab ~= nil then
							GUI.CurrentTab:Deactivate()
						end
					end
					
					Tab.active = true
					Tab["14"]["Visible"] = Tab.active
					Library:Tween(Tab["9"], {ImageColor3 = Color3.new(1, 1, 1)}) 
					
					GUI.CurrentTab = Tab
				end
			end
			
			
			function Tab:Deactivate()
				if Tab.active then
					Tab.active = false
					Tab.Hover = false
					Tab["14"]["Visible"] = Tab.active
					Library:Tween(Tab["9"], {ImageColor3 = Color3.fromRGB(126, 126, 126)})
					
				end
			end
			
			-- Tab Behavior
			do
				Tab["9"].MouseEnter:Connect(function()
					print("Mouse entered")
					Tab.Hover = true
					if not Tab.active then
						Library:Tween(Tab["9"], {ImageColor3 = Color3.new(1, 1, 1)})
					end
				end)

				Tab["9"].MouseLeave:Connect(function()
					print("Mouse left")
					Tab.Hover = false
					if not Tab.active then
						Library:Tween(Tab["9"], {ImageColor3 = Color3.fromRGB(126, 126, 126)})
					end
				end)

				uis.InputBegan:Connect(function(input, gpe)
					if gpe then return end

					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						if Tab.Hover then
							Tab:Activate()
						end
					end
				end)

			end
		end
		
		function Tab:Button(Text, Callback)
			Text = Text or "Button"
			Callback = Callback or function() end
			
			local Button = {
				Hover = false
			}
			
			-- Render
			do
				-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button
				Button["15"] = Instance.new("Frame", Tab["14"]);
				Button["15"]["BorderSizePixel"] = 0;
				Button["15"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
				Button["15"]["Size"] = UDim2.new(1, 0, 0, 60);
				Button["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["15"]["Name"] = [[Button]];

				-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.UICorner
				Button["16"] = Instance.new("UICorner", Button["15"]);


				-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.TextLabel
				Button["17"] = Instance.new("TextLabel", Button["15"]);
				Button["17"]["BorderSizePixel"] = 0;
				Button["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Button["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["17"]["TextSize"] = 24;
				Button["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Button["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Button["17"]["BackgroundTransparency"] = 1;
				Button["17"]["Size"] = UDim2.new(1, 0, 1, 0);
				Button["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["17"]["Text"] = Text;
				
				-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.TextLabel.UIPadding
				Button["18"] = Instance.new("UIPadding", Button["17"]);
				Button["18"]["PaddingLeft"] = UDim.new(0, 20);
				
				-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.ImageLabel
				Button["19"] = Instance.new("ImageLabel", Button["15"]);
				Button["19"]["BorderSizePixel"] = 0;
				Button["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Button["19"]["AnchorPoint"] = Vector2.new(1, 0);
				Button["19"]["Image"] = [[http://www.roblox.com/asset/?id=18330279950]];
				Button["19"]["Size"] = UDim2.new(0, 30, 0, 30);
				Button["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Button["19"]["BackgroundTransparency"] = 1;
				Button["19"]["Rotation"] = 270;
				Button["19"]["Position"] = UDim2.new(1, -15, 0, 15);
			end
			
			-- Behavior
			do
				Button["15"].MouseEnter:Connect(function()
					Button.Hover = true
					Library:Tween(Button["15"], { BackgroundColor3 = Color3.fromRGB(65, 65, 65)})
				end)
				
				Button["15"].MouseLeave:Connect(function()
					Button.Hover = false
					Library:Tween(Button["15"], { BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
				end)
				
				Button["15"].InputBegan:Connect(function(input, gpe)
					if gpe then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						-- Execute the callback function when the UI instance is clicked
						Callback()
					end
				end)
			end
			
			--Methods
			do
				function Button:SetText(Text)
					Text = Text or "Button"
					Button["17"]["Text"] = Text
				end
				
				function Button:GetText()
					if Button["17"]["Text"] == nil then
						Button:SetText("Button")
					end
					
					return Button["17"]["Text"]
				end
			end
		end
		
		function Tab:Label(Text)
			Text = Text or "Label"

			local Label = {
				Hover = false
			}

			-- Render
			do
				-- Render
				do
					-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button
					Label["15"] = Instance.new("Frame", Tab["14"]);
					Label["15"]["BorderSizePixel"] = 0;
					Label["15"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
					Label["15"]["Size"] = UDim2.new(1, 0, 0, 60);
					Label["15"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["15"]["Name"] = [[Button]];

					-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.UICorner
					Label["16"] = Instance.new("UICorner", Label["15"]);


					-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.TextLabel
					Label["17"] = Instance.new("TextLabel", Label["15"]);
					Label["17"]["BorderSizePixel"] = 0;
					Label["17"]["TextXAlignment"] = Enum.TextXAlignment.Left;
					Label["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Label["17"]["TextSize"] = 24;
					Label["17"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
					Label["17"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
					Label["17"]["BackgroundTransparency"] = 1;
					Label["17"]["Size"] = UDim2.new(1, 0, 1, 0);
					Label["17"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["17"]["Text"] = Text;

					-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.TextLabel.UIPadding
					Label["18"] = Instance.new("UIPadding", Label["17"]);
					Label["18"]["PaddingLeft"] = UDim.new(0, 20);
					
					-- StarterButton.SupabaseUI.Main.ContentHolder.AimButton.Button.ImageLabel
					Label["19"] = Instance.new("ImageLabel", Label["15"]);
					Label["19"]["BorderSizePixel"] = 0;
					Label["19"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
					Label["19"]["AnchorPoint"] = Vector2.new(1, 0);
					Label["19"]["Image"] = [[http://www.roblox.com/asset/?id=18568788324]];
					Label["19"]["Size"] = UDim2.new(0, 30, 0, 30);
					Label["19"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
					Label["19"]["BackgroundTransparency"] = 1;
					Label["19"]["Position"] = UDim2.new(1, -15, 0, 15);
				end
			end

			--Methods
			do
				function Label:SetText(Text)
					Text = Text or "Button"
					Label["17"]["Text"] = Text
				end

				function Label:GetText()
					if Label["17"]["Text"] == nil then
						Label:SetText("Label")
					end

					return Label["17"]["Text"]
				end
			end
		end
		
		function Tab:Slider(Text, Min, Max, default, Callback)
			Text = Text or "Slider"
			Callback = Callback or function(v) end
			Min = Min or 0
			Max = Max or 100
			default = default or 50
			
			local Slider = 	{
				MouseDown = false,
				Hover = false,
				Connection = nil
			}
			
			--render
			do
				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider
				Slider["20"] = Instance.new("Frame", Tab["14"]);
				Slider["20"]["BorderSizePixel"] = 0;
				Slider["20"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
				Slider["20"]["Size"] = UDim2.new(1, 0, -0.01946, 120);
				Slider["20"]["Position"] = UDim2.new(0, 0, 0.34063, 0);
				Slider["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["20"]["Name"] = [[Slider]];

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.UICorner
				Slider["21"] = Instance.new("UICorner", Slider["20"]);


				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.TextLabel
				Slider["22"] = Instance.new("TextLabel", Slider["20"]);
				Slider["22"]["BorderSizePixel"] = 0;
				Slider["22"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Slider["22"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["22"]["TextSize"] = 24;
				Slider["22"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["22"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["22"]["BackgroundTransparency"] = 1;
				Slider["22"]["Size"] = UDim2.new(1, -100, 0, 60);
				Slider["22"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["22"]["Text"] = Text;

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.TextLabel.UIPadding
				Slider["23"] = Instance.new("UIPadding", Slider["22"]);
				Slider["23"]["PaddingLeft"] = UDim.new(0, 20);

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.Value
				Slider["24"] = Instance.new("TextLabel", Slider["20"]);
				Slider["24"]["BorderSizePixel"] = 0;
				Slider["24"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["24"]["TextSize"] = 29;
				Slider["24"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Slider["24"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["24"]["BackgroundTransparency"] = 1;
				Slider["24"]["AnchorPoint"] = Vector2.new(1, 0);
				Slider["24"]["Size"] = UDim2.new(0, 100, 0, 60);
				Slider["24"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["24"]["Text"] = [[100]];
				Slider["24"]["Name"] = [[Value]];
				Slider["24"]["Position"] = UDim2.new(1, 0, 0, 0);

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.SliderBack
				Slider["25"] = Instance.new("Frame", Slider["20"]);
				Slider["25"]["BorderSizePixel"] = 0;
				Slider["25"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
				Slider["25"]["AnchorPoint"] = Vector2.new(0, 1);
				Slider["25"]["Size"] = UDim2.new(1, -40, 0, 10);
				Slider["25"]["Position"] = UDim2.new(0, 20, 1, -20);
				Slider["25"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["25"]["Name"] = [[SliderBack]];

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.SliderBack.UICorner
				Slider["26"] = Instance.new("UICorner", Slider["25"]);
				Slider["26"]["CornerRadius"] = UDim.new(1, 0);

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.SliderBack.Slider
				Slider["27"] = Instance.new("Frame", Slider["25"]);
				Slider["27"]["BorderSizePixel"] = 0;
				Slider["27"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Slider["27"]["Size"] = UDim2.new(0.5, 0, 1, 0);
				Slider["27"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Slider["27"]["Name"] = [[Slider]];

				-- StarterSlider.SupabaseUI.Main.ContentHolder.AimSlider.Slider.SliderBack.Slider.UICorner
				Slider["28"] = Instance.new("UICorner", Slider["27"]);
				Slider["28"]["CornerRadius"] = UDim.new(1, 0);
			end
			
			-- mehods
			do
				function Slider:SetValue(v)
					if v == nil then
						local percentage = math.clamp((mouse.X - Slider["20"].AbsolutePosition.X) / (Slider["20"].AbsoluteSize.X), 0, 1)
						local value = math.floor(((Max - Min) * percentage) + Min)
						Slider["24"]["Text"] = tostring(value)
						Library:Tween(Slider["27"], { Size = UDim2.fromScale(percentage, 1) })
					else
						Slider["24"]["Text"] = tostring(v)
						Library:Tween(Slider["27"], { Size = UDim2.fromScale(((v - Min) / (Max - Min)), 1) })
					end
					Callback(Slider:GetValue())
				end
				
				function Slider:GetValue()
					return tonumber(Slider["24"]["Text"])
				end
			end
			
			-- logic
			do
				Slider["20"].MouseEnter:Connect(function()
					Slider.Hover = true
					Library:Tween(Slider["20"], { BackgroundColor3 = Color3.fromRGB(65, 65, 65)})
				end)

				Slider["20"].MouseLeave:Connect(function()
					Slider.Hover = false
					Library:Tween(Slider["20"], { BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
				end)

				Slider["20"].InputBegan:Connect(function(input, gpe)
					if gpe then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = true
						
						if not Slider.Connection then
							Slider.Connection = rs.RenderStepped:Connect(function()
								Slider:SetValue()
							end)
						end
					end
				end)

				Slider["20"].InputEnded:Connect(function(input, gpe)
					if gpe then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Slider.MouseDown = false
						
						if Slider.Connection then Slider.Connection:Disconnect() end
						Slider.Connection = nil
					end
				end)
			end
			
			Slider:SetValue(default)
			return Slider
		end
		
		function Tab:Toggle(Text, Callback, Default)
			Text = Text or "Button"
			Callback = Callback or function(v) end
			Default = Default or false
			
			local Toggle = {
				Hover = false,
				State = false
			}

			-- Render
			do
				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle
				Toggle["2e"] = Instance.new("Frame", Tab["14"]);
				Toggle["2e"]["BorderSizePixel"] = 0;
				Toggle["2e"]["BackgroundColor3"] = Color3.fromRGB(41, 41, 41);
				Toggle["2e"]["Size"] = UDim2.new(1, 0, 0, 60);
				Toggle["2e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["2e"]["Name"] = [[ActiveToggle]];

				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.UICorner
				Toggle["2f"] = Instance.new("UICorner", Toggle["2e"]);


				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.TextLabel
				Toggle["30"] = Instance.new("TextLabel", Toggle["2e"]);
				Toggle["30"]["BorderSizePixel"] = 0;
				Toggle["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
				Toggle["30"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["30"]["TextSize"] = 24;
				Toggle["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Regular, Enum.FontStyle.Normal);
				Toggle["30"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["30"]["BackgroundTransparency"] = 1;
				Toggle["30"]["Size"] = UDim2.new(1, 0, 1, 0);
				Toggle["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["30"]["Text"] = [[Toggle]];

				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.TextLabel.UIPadding
				Toggle["31"] = Instance.new("UIPadding", Toggle["30"]);
				Toggle["31"]["PaddingLeft"] = UDim.new(0, 20);

				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.Toggle
				Toggle["32"] = Instance.new("Frame", Toggle["2e"]);
				Toggle["32"]["BorderSizePixel"] = 0;
				Toggle["32"]["BackgroundColor3"] = Color3.fromRGB(88, 88, 89);
				Toggle["32"]["AnchorPoint"] = Vector2.new(1, 0);
				Toggle["32"]["Size"] = UDim2.new(0, 30, 0, 30);
				Toggle["32"]["Position"] = UDim2.new(1, -15, 0, 15);
				Toggle["32"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["32"]["Name"] = [[Toggle]];

				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.Toggle.UICorner
				Toggle["33"] = Instance.new("UICorner", Toggle["32"]);


				-- StarterGui.SupabaseUI.Main.ContentHolder.AimTab.ActiveToggle.Toggle.ImageLabel
				Toggle["34"] = Instance.new("ImageLabel", Toggle["32"]);
				Toggle["34"]["BorderSizePixel"] = 0;
				Toggle["34"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
				Toggle["34"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
				Toggle["34"]["Image"] = [[http://www.roblox.com/asset/?id=18633702409]];
				Toggle["34"]["Size"] = UDim2.new(1, 0, 1, 0);
				Toggle["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
				Toggle["34"]["BackgroundTransparency"] = 1;
				Toggle["34"]["Position"] = UDim2.new(0.5, 0, 0.5, 0)
				Toggle["34"]["ImageTransparency"] = 1;

			end

			-- Behavior
			do
				Toggle["2e"].MouseEnter:Connect(function()
					Toggle.Hover = true
					Library:Tween(Toggle["2e"], { BackgroundColor3 = Color3.fromRGB(65, 65, 65)})
				end)

				Toggle["2e"].MouseLeave:Connect(function()
					Toggle.Hover = false
					Library:Tween(Toggle["2e"], { BackgroundColor3 = Color3.fromRGB(40, 40, 40)})
				end)

				Toggle["2e"].InputBegan:Connect(function(input, gpe)
					if gpe then return end
					if input.UserInputType == Enum.UserInputType.MouseButton1 then
						Toggle.State = not Toggle.State
						if Toggle.State then
							Library:Tween(Toggle["34"], { ImageTransparency = 0 })
						else
							Library:Tween(Toggle["34"], { ImageTransparency = 1 })
						end
					end
				end)
			end

			--Methods
			do
				function Toggle:SetState(bool)
					Toggle.State = bool
				end

				function Toggle:GetText()
					return Toggle.State
				end
			end
		end
		
		if GUI.CurrentTab == nil then
			Tab:Activate()
		end
		
		if GUI.CurrentTab == Tab then
			Tab["14"]["Visible"] = true
		else
			Tab["14"]["Visible"] = false
		end
		
		
		
		return Tab
	end

	function GUI:NewSeparator()
		local Separator = {}

		do   
			Separator["a"] = Instance.new("Frame", GUI["5"]);
			Separator["a"]["BorderSizePixel"] = 0;
			Separator["a"]["BackgroundColor3"] = Color3.fromRGB(53, 53, 53);
			Separator["a"]["Size"] = UDim2.new(1, 0, 0, 1);
			Separator["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Separator["a"]["Name"] = [[Separator]];
		end

		return Separator
	end
	
	function GUI:LoadingScreen()
		local Loading = {
			Steps = 100,
			StepsCompleted = 0,
		}

		do
			-- StarterGui.ScreenGui.Loading
			Loading["2"] = Instance.new("Frame", GUI["1"]);
			Loading["2"]["BorderSizePixel"] = 0;
			Loading["2"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
			Loading["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			Loading["2"]["Size"] = UDim2.new(0.3, 0, 0.3, 0);
			Loading["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
			Loading["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Loading["2"]["Name"] = [[Loading]];
			Loading["2"]["ClipsDescendants"] = true;
			Loading["2"]["Visible"] = false;

			-- StarterGui.ScreenGui.Loading.DropShadowHolder
			Loading["3"] = Instance.new("Frame", Loading["2"]);
			Loading["3"]["ZIndex"] = 0;
			Loading["3"]["BorderSizePixel"] = 0;
			Loading["3"]["Size"] = UDim2.new(1, 0, 1, 0);
			Loading["3"]["Name"] = [[DropShadowHolder]];
			Loading["3"]["BackgroundTransparency"] = 1;

			-- StarterGui.ScreenGui.Loading.DropShadowHolder.DropShadow
			Loading["4"] = Instance.new("ImageLabel", Loading["3"]);
			Loading["4"]["ZIndex"] = 0;
			Loading["4"]["BorderSizePixel"] = 0;
			Loading["4"]["SliceCenter"] = Rect.new(49, 49, 450, 450);
			Loading["4"]["ScaleType"] = Enum.ScaleType.Slice;
			Loading["4"]["ImageTransparency"] = 0.5;
			Loading["4"]["ImageColor3"] = Color3.fromRGB(0, 0, 0);
			Loading["4"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
			Loading["4"]["Image"] = [[rbxassetid://6015897843]];
			Loading["4"]["Size"] = UDim2.new(1, 47, 1, 47);
			Loading["4"]["BackgroundTransparency"] = 1;
			Loading["4"]["Name"] = [[DropShadow]];
			Loading["4"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);

			-- StarterGui.ScreenGui.Loading.Title
			Loading["5"] = Instance.new("TextLabel", Loading["2"]);
			Loading["5"]["BorderSizePixel"] = 0;
			Loading["5"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Loading["5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Loading["5"]["TextSize"] = 43;
			Loading["5"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Loading["5"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			Loading["5"]["BackgroundTransparency"] = 1;
			Loading["5"]["Size"] = UDim2.new(1, -60, 0, 50);
			Loading["5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Loading["5"]["Text"] = [[Loading]];
			Loading["5"]["Name"] = [[Title]];
			Loading["5"]["Position"] = UDim2.new(0, 30, 0, 30);

			-- StarterGui.ScreenGui.Loading.LoadingBarBack
			Loading["6"] = Instance.new("Frame", Loading["2"]);
			Loading["6"]["BorderSizePixel"] = 0;
			Loading["6"]["BackgroundColor3"] = Color3.fromRGB(34, 34, 34);
			Loading["6"]["AnchorPoint"] = Vector2.new(1, 1);
			Loading["6"]["Size"] = UDim2.new(1, -60, 0, 10);
			Loading["6"]["Position"] = UDim2.new(1, -30, 1, -30);
			Loading["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Loading["6"]["Name"] = [[LoadingBarBack]];

			-- StarterGui.ScreenGui.Loading.LoadingBarBack.UICorner
			Loading["7"] = Instance.new("UICorner", Loading["6"]);
			Loading["7"]["CornerRadius"] = UDim.new(1, 0);

			-- StarterGui.ScreenGui.Loading.LoadingBarBack.Frame
			Loading["8"] = Instance.new("Frame", Loading["6"]);
			Loading["8"]["BorderSizePixel"] = 0;
			Loading["8"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Loading["8"]["Size"] = UDim2.new(0.36, 0, 1, 0);
			Loading["8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);

			-- StarterGui.ScreenGui.Loading.LoadingBarBack.Frame.UICorner
			Loading["9"] = Instance.new("UICorner", Loading["8"]);
			Loading["9"]["CornerRadius"] = UDim.new(1, 0);

			-- StarterGui.ScreenGui.Loading.Title
			Loading["a"] = Instance.new("TextLabel", Loading["2"]);
			Loading["a"]["BorderSizePixel"] = 0;
			Loading["a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
			Loading["a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			Loading["a"]["TextSize"] = 26;
			Loading["a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
			Loading["a"]["TextColor3"] = Color3.fromRGB(104, 104, 104);
			Loading["a"]["BackgroundTransparency"] = 1;
			Loading["a"]["Size"] = UDim2.new(1, -60, 0, 50);
			Loading["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			Loading["a"]["Text"] = "0%";
			Loading["a"]["Name"] = [[Title]];
			Loading["a"]["Position"] = UDim2.new(0, 30, 0, 60);
		end

		function Loading:SetStep(step)
			step = step or 50
			Loading["a"]["Text"] = step .. "%"
			Library:Tween(Loading["8"], { Size = UDim2.fromScale(step / 100, 1)})
		end

		function Loading:Show()
			Loading["2"]["Visible"] = true
		end

		function Loading:Hide(onFinish)
			onFinish = onFinish or function() end
			
			Library:Tween(Loading["6"], { BackgroundTransparency = 1 })
			Library:Tween(Loading["8"], { BackgroundTransparency = 1 })
			Library:Tween(Loading["5"], { TextTransparency = 1 })
			Library:Tween(Loading["a"], { TextTransparency = 1 }, function()
				task.wait(0.2)
				Library:Tween(Loading["2"], { Size = UDim2.fromOffset(1,1) }, function()
					Loading["2"]["Visible"] = false
					task.wait(0.3)
					onFinish()
				end)
			end)
		end
		return Loading
	end
	
	function GUI:Show()
		GUI["2"]["Visible"] = true
	end

	function GUI:Hide()
		GUI["2"]["Visible"] = false
	end
	
	function GUI:Init(options)
		local loading = GUI:LoadingScreen()
		loading:Show()
		local n = 0
		
		for i = 50,1,-1 
		do 
			loading:SetStep(n)
			n+=2
			task.wait(0.1)
		end
		loading:Hide(function()
			GUI:Show()
		end)
		--Library.Tween(loading["2"], { Size = UDim2.fromOffset(1,1) }, function() loading:Hide() end)
		--GUI:Show()
	end
	
	return GUI
end

return Library
