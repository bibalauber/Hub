local ts = game:GetService("TweenService")
local uis = game:GetService("UserInputService")


local Script = {
	Version = 0.1,
	LocalPlayer = {
		DisplayName = game:GetService("Players").LocalPlayer.DisplayName,
		Name = "@" .. game:GetService("Players").LocalPlayer.Name,
		ProfileIcon = game:GetService("Players"):GetUserThumbnailAsync(
			game:GetService("Players").LocalPlayer.UserId, 
			Enum.ThumbnailType.HeadShot,
			Enum.ThumbnailSize.Size420x420
		),
		PlayTime = "0s"
	}
}

local function PlayTime()
	local secs = 0

	while true do
		secs += 1

		if secs // 3600 < 24 then
			local hours = secs // 3600
			local minutes = (secs // 60) % 60
			Script.LocalPlayer.PlayTime = hours .. "h " .. minutes .. "m"
		else
			local days = secs // 86400
			local hours = (secs % 86400) // 3600
			Script.LocalPlayer.PlayTime = days .. "j " .. hours .. "h"
		end

		wait(1)
	end
end

task.spawn(PlayTime)


local UI = {}
UI.Tree = {}

function UI:Init(options)
	-- Bottom Bar + Icons + Hour
	do
		local blur = Instance.new("BlurEffect")
		blur.Parent = game.Workspace
		blur.Size = 13
		
		-- StarterGui.Hub
		UI.Tree["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
		UI.Tree["1"]["Name"] = [[Hub]];
		UI.Tree["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
		UI.Tree["1"]["Parent"] = game:GetService("CoreGui")

		-- StarterGui.Hub.Bottom Bar
		UI.Tree["2"] = Instance.new("Frame", UI.Tree["1"]);
		UI.Tree["2"]["ZIndex"] = 9999999;
		UI.Tree["2"]["BorderSizePixel"] = 0;
		UI.Tree["2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["2"]["Size"] = UDim2.new(0, 500, 0, 50);
		UI.Tree["2"]["Position"] = UDim2.new(0.33807, 0, 0.90351, 0);
		UI.Tree["2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["2"]["Name"] = [[Bottom Bar]];
		UI.Tree["2"]["BackgroundTransparency"] = 1;

		-- StarterGui.Hub.Bottom Bar.Hour
		UI.Tree["3"] = Instance.new("Frame", UI.Tree["2"]);
		UI.Tree["3"]["BorderSizePixel"] = 0;
		UI.Tree["3"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
		UI.Tree["3"]["Size"] = UDim2.new(0, 70, 0, 50);
		UI.Tree["3"]["Position"] = UDim2.new(0.33807, 0, 0.90351, 0);
		UI.Tree["3"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["3"]["Name"] = [[Hour]];
		UI.Tree["3"]["LayoutOrder"] = 2;

		-- StarterGui.Hub.Bottom Bar.Hour.UICorner
		UI.Tree["4"] = Instance.new("UICorner", UI.Tree["3"]);
		UI.Tree["4"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterGui.Hub.Bottom Bar.Hour.UIStroke
		UI.Tree["5"] = Instance.new("UIStroke", UI.Tree["3"]);
		UI.Tree["5"]["Color"] = Color3.fromRGB(84, 84, 84);

		-- StarterGui.Hub.Bottom Bar.Hour.TextLabel
		UI.Tree["6"] = Instance.new("TextLabel", UI.Tree["3"]);
		UI.Tree["6"]["Interactable"] = false;
		UI.Tree["6"]["BorderSizePixel"] = 0;
		UI.Tree["6"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["6"]["TextSize"] = 20;
		UI.Tree["6"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
		UI.Tree["6"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["6"]["BackgroundTransparency"] = 1;
		UI.Tree["6"]["Size"] = UDim2.new(1, 0, 1, 0);
		UI.Tree["6"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["6"]["Text"] = [[19:08]];

		-- StarterGui.Hub.Bottom Bar.Hour.TextLabel.LocalScript
		UI.Tree["7"] = Instance.new("LocalScript", UI.Tree["6"]);


		-- StarterGui.Hub.Bottom Bar.UIListLayout
		UI.Tree["8"] = Instance.new("UIListLayout", UI.Tree["2"]);
		UI.Tree["8"]["Padding"] = UDim.new(0, 10);
		UI.Tree["8"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		UI.Tree["8"]["FillDirection"] = Enum.FillDirection.Horizontal;

		-- StarterGui.Hub.Bottom Bar.MenuBar
		UI.Tree["9"] = Instance.new("Frame", UI.Tree["2"]);
		UI.Tree["9"]["BorderSizePixel"] = 0;
		UI.Tree["9"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
		UI.Tree["9"]["Size"] = UDim2.new(0, 500, 0, 50);
		UI.Tree["9"]["Position"] = UDim2.new(0.33807, 0, 0.90351, 0);
		UI.Tree["9"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["9"]["Name"] = [[MenuBar]];
		UI.Tree["9"]["LayoutOrder"] = 1;

		-- StarterGui.Hub.Bottom Bar.MenuBar.UICorner
		UI.Tree["a"] = Instance.new("UICorner", UI.Tree["9"]);
		UI.Tree["a"]["CornerRadius"] = UDim.new(0, 10);

		-- StarterGui.Hub.Bottom Bar.MenuBar.UIStroke
		UI.Tree["b"] = Instance.new("UIStroke", UI.Tree["9"]);
		UI.Tree["b"]["Color"] = Color3.fromRGB(84, 84, 84);

		-- StarterGui.Hub.Bottom Bar.MenuBar.Settings
		UI.Tree["c"] = Instance.new("ImageLabel", UI.Tree["9"]);
		UI.Tree["c"]["BorderSizePixel"] = 0;
		UI.Tree["c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["c"]["Image"] = [[http://www.roblox.com/asset/?id=18539909242]];
		UI.Tree["c"]["Size"] = UDim2.new(0, 30, 0, 30);
		UI.Tree["c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["c"]["BackgroundTransparency"] = 1;
		UI.Tree["c"]["LayoutOrder"] = 1000;
		UI.Tree["c"]["Name"] = [[Settings]];

		-- StarterGui.Hub.Bottom Bar.MenuBar.UIListLayout
		UI.Tree["d"] = Instance.new("UIListLayout", UI.Tree["9"]);
		UI.Tree["d"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
		UI.Tree["d"]["Padding"] = UDim.new(0, 10);
		UI.Tree["d"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
		UI.Tree["d"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		UI.Tree["d"]["FillDirection"] = Enum.FillDirection.Horizontal;

		-- StarterGui.Hub.Bottom Bar.MenuBar.Player
		UI.Tree["e"] = Instance.new("ImageLabel", UI.Tree["9"]);
		UI.Tree["e"]["BorderSizePixel"] = 0;
		UI.Tree["e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["e"]["Image"] = [[http://www.roblox.com/asset/?id=18539933150]];
		UI.Tree["e"]["Size"] = UDim2.new(0, 30, 0, 30);
		UI.Tree["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["e"]["BackgroundTransparency"] = 1;
		UI.Tree["e"]["LayoutOrder"] = 999;
		UI.Tree["e"]["Name"] = [[Player]];

		-- StarterGui.Hub.Bottom Bar.MenuBar.Executor
		UI.Tree["f"] = Instance.new("ImageLabel", UI.Tree["9"]);
		UI.Tree["f"]["BorderSizePixel"] = 0;
		UI.Tree["f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["f"]["Image"] = [[http://www.roblox.com/asset/?id=18539949444]];
		UI.Tree["f"]["Size"] = UDim2.new(0, 30, 0, 30);
		UI.Tree["f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["f"]["BackgroundTransparency"] = 1;
		UI.Tree["f"]["LayoutOrder"] = 998;
		UI.Tree["f"]["Name"] = [[Executor]];

		-- StarterGui.Hub.Bottom Bar.MenuBar.Scripts
		UI.Tree["10"] = Instance.new("ImageLabel", UI.Tree["9"]);
		UI.Tree["10"]["BorderSizePixel"] = 0;
		UI.Tree["10"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["10"]["Image"] = [[http://www.roblox.com/asset/?id=18540058619]];
		UI.Tree["10"]["Size"] = UDim2.new(0, 30, 0, 30);
		UI.Tree["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["10"]["BackgroundTransparency"] = 1;
		UI.Tree["10"]["LayoutOrder"] = 997;
		UI.Tree["10"]["Name"] = [[Scripts]];

		-- StarterGui.Hub.Bottom Bar.MenuBar.Home
		UI.Tree["11"] = Instance.new("ImageLabel", UI.Tree["9"]);
		UI.Tree["11"]["BorderSizePixel"] = 0;
		UI.Tree["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["11"]["Image"] = [[http://www.roblox.com/asset/?id=18540078855]];
		UI.Tree["11"]["Size"] = UDim2.new(0, 30, 0, 30);
		UI.Tree["11"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["11"]["BackgroundTransparency"] = 1;
		UI.Tree["11"]["LayoutOrder"] = 1;
		UI.Tree["11"]["Name"] = [[Home]];
	end
	
	-- LeftBar
	do
		-- StarterGui.Hub.LeftBar
		UI.Tree["2d"] = Instance.new("Frame", UI.Tree["1"]);
		UI.Tree["2d"]["ZIndex"] = 9999999;
		UI.Tree["2d"]["BorderSizePixel"] = 0;
		UI.Tree["2d"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["2d"]["Size"] = UDim2.new(0, 250, 1, 0);
		UI.Tree["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["2d"]["Name"] = [[LeftBar]];
		UI.Tree["2d"]["BackgroundTransparency"] = 1;

		-- StarterGui.Hub.LeftBar.UIListLayout
		UI.Tree["2e"] = Instance.new("UIListLayout", UI.Tree["2d"]);
		UI.Tree["2e"]["Padding"] = UDim.new(0, 20);
		UI.Tree["2e"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
		UI.Tree["2e"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

		-- StarterGui.Hub.LeftBar.UIPadding
		UI.Tree["2f"] = Instance.new("UIPadding", UI.Tree["2d"]);
		UI.Tree["2f"]["PaddingLeft"] = UDim.new(0, 20);
		UI.Tree["2f"]["PaddingBottom"] = UDim.new(0, 20);
	end
	
	-- RighBar
	do
		-- StarterGui.Hub.RightBar
		UI.Tree["12"] = Instance.new("Frame", UI.Tree["1"]);
		UI.Tree["12"]["ZIndex"] = 9999999;
		UI.Tree["12"]["BorderSizePixel"] = 0;
		UI.Tree["12"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
		UI.Tree["12"]["AnchorPoint"] = Vector2.new(1, 1);
		UI.Tree["12"]["Size"] = UDim2.new(0, 250, 1, 0);
		UI.Tree["12"]["Position"] = UDim2.new(1, 0, 1, 0);
		UI.Tree["12"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
		UI.Tree["12"]["Name"] = [[RightBar]];
		UI.Tree["12"]["BackgroundTransparency"] = 1;

		-- StarterGui.Hub.RightBar.UIListLayout
		UI.Tree["13"] = Instance.new("UIListLayout", UI.Tree["12"]);
		UI.Tree["13"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Right;
		UI.Tree["13"]["Padding"] = UDim.new(0, 20);
		UI.Tree["13"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
		UI.Tree["13"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
		
		-- StarterGui.Hub.RightBar.UIPadding
		UI.Tree["1b"] = Instance.new("UIPadding", UI.Tree["12"]);
		UI.Tree["1b"]["PaddingRight"] = UDim.new(0, 20);
		UI.Tree["1b"]["PaddingBottom"] = UDim.new(0, 20);
	end
	
	-- Profile
	do
		
			-- StarterGui.Hub.LeftBar.Profile
			UI.Tree["30"] = Instance.new("Frame", UI.Tree["2d"]);
			UI.Tree["30"]["BorderSizePixel"] = 0;
			UI.Tree["30"]["BackgroundColor3"] = Color3.fromRGB(39, 39, 39);
			UI.Tree["30"]["Size"] = UDim2.new(0, 300, 0, 446);
			UI.Tree["30"]["Position"] = UDim2.new(-0.02609, 0, 0.42674, 0);
			UI.Tree["30"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["30"]["Name"] = [[Profile]];
			UI.Tree["30"]["LayoutOrder"] = 2;

			-- StarterGui.Hub.LeftBar.Profile.UICorner
			UI.Tree["31"] = Instance.new("UICorner", UI.Tree["30"]);
			UI.Tree["31"]["CornerRadius"] = UDim.new(0, 10);

			-- StarterGui.Hub.LeftBar.Profile.UIListLayout
			UI.Tree["32"] = Instance.new("UIListLayout", UI.Tree["30"]);
			UI.Tree["32"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			UI.Tree["32"]["Padding"] = UDim.new(0, 20);
			UI.Tree["32"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterGui.Hub.LeftBar.Profile.Icon
			UI.Tree["33"] = Instance.new("ImageLabel", UI.Tree["30"]);
			UI.Tree["33"]["BorderSizePixel"] = 0;
			UI.Tree["33"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
			UI.Tree["33"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
			UI.Tree["33"]["Size"] = UDim2.new(0, 200, 0, 200);
			UI.Tree["33"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["33"]["LayoutOrder"] = 1;
			UI.Tree["33"]["Name"] = Script.LocalPlayer.ProfileIcon;
			UI.Tree["33"]["Position"] = UDim2.new(0, 0, 0, 20);

			-- StarterGui.Hub.LeftBar.Profile.Icon.UICorner
			UI.Tree["34"] = Instance.new("UICorner", UI.Tree["33"]);
			UI.Tree["34"]["CornerRadius"] = UDim.new(1, 0);

			-- StarterGui.Hub.LeftBar.Profile.Icon.LocalScript
			UI.Tree["35"] = Instance.new("LocalScript", UI.Tree["33"]);


			-- StarterGui.Hub.LeftBar.Profile.UIPadding
			UI.Tree["36"] = Instance.new("UIPadding", UI.Tree["30"]);
			UI.Tree["36"]["PaddingTop"] = UDim.new(0, 40);

			-- StarterGui.Hub.LeftBar.Profile.Name
			UI.Tree["37"] = Instance.new("TextLabel", UI.Tree["30"]);
			UI.Tree["37"]["BorderSizePixel"] = 0;
			UI.Tree["37"]["BackgroundColor3"] = Color3.fromRGB(81, 81, 81);
			UI.Tree["37"]["TextSize"] = 12;
			UI.Tree["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["37"]["TextColor3"] = Color3.fromRGB(113, 113, 113);
			UI.Tree["37"]["BackgroundTransparency"] = 1;
			UI.Tree["37"]["Size"] = UDim2.new(1, 0, 0, 29);
			UI.Tree["37"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["37"]["Text"] = Script.LocalPlayer.Name;
			UI.Tree["37"]["LayoutOrder"] = 3;
			UI.Tree["37"]["Name"] = [[Name]];

			-- StarterGui.Hub.LeftBar.Profile.Name.UIPadding
			UI.Tree["38"] = Instance.new("UIPadding", UI.Tree["37"]);
			UI.Tree["38"]["PaddingBottom"] = UDim.new(0, 30);

			-- StarterGui.Hub.LeftBar.Profile.Name.LocalScript
			UI.Tree["39"] = Instance.new("LocalScript", UI.Tree["37"]);


			-- StarterGui.Hub.LeftBar.Profile.DisplayName
			UI.Tree["3a"] = Instance.new("TextLabel", UI.Tree["30"]);
			UI.Tree["3a"]["BorderSizePixel"] = 0;
			UI.Tree["3a"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["3a"]["TextSize"] = 29;
			UI.Tree["3a"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["3a"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["3a"]["BackgroundTransparency"] = 1;
			UI.Tree["3a"]["Size"] = UDim2.new(1, 0, 0, 29);
			UI.Tree["3a"]["ClipsDescendants"] = true;
			UI.Tree["3a"]["BorderColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["3a"]["Text"] = Script.LocalPlayer.DisplayName;
			UI.Tree["3a"]["LayoutOrder"] = 2;
			UI.Tree["3a"]["Name"] = [[DisplayName]];

			-- StarterGui.Hub.LeftBar.Profile.DisplayName.LocalScript
			UI.Tree["3b"] = Instance.new("LocalScript", UI.Tree["3a"]);


			-- StarterGui.Hub.LeftBar.Profile.Stats
			UI.Tree["3c"] = Instance.new("Frame", UI.Tree["30"]);
			UI.Tree["3c"]["BorderSizePixel"] = 0;
			UI.Tree["3c"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["3c"]["Size"] = UDim2.new(1, -40, 0, 60);
			UI.Tree["3c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["3c"]["Name"] = [[Stats]];
			UI.Tree["3c"]["LayoutOrder"] = 4;
			UI.Tree["3c"]["BackgroundTransparency"] = 1;

			-- StarterGui.Hub.LeftBar.Profile.Stats.Ping
			UI.Tree["3d"] = Instance.new("Frame", UI.Tree["3c"]);
			UI.Tree["3d"]["BorderSizePixel"] = 0;
			UI.Tree["3d"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
			UI.Tree["3d"]["Size"] = UDim2.new(0, 70, 0, 70);
			UI.Tree["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["3d"]["Name"] = [[Ping]];

			-- StarterGui.Hub.LeftBar.Profile.Stats.Ping.UICorner
			UI.Tree["3e"] = Instance.new("UICorner", UI.Tree["3d"]);
			UI.Tree["3e"]["CornerRadius"] = UDim.new(0, 10);

			-- StarterGui.Hub.LeftBar.Profile.Stats.Ping.UIListLayout
			UI.Tree["3f"] = Instance.new("UIListLayout", UI.Tree["3d"]);
			UI.Tree["3f"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			UI.Tree["3f"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
			UI.Tree["3f"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterGui.Hub.LeftBar.Profile.Stats.Ping.Ping
			UI.Tree["40"] = Instance.new("TextLabel", UI.Tree["3d"]);
			UI.Tree["40"]["TextWrapped"] = true;
			UI.Tree["40"]["BorderSizePixel"] = 0;
			UI.Tree["40"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["40"]["TextSize"] = 22;
			UI.Tree["40"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["40"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["40"]["BackgroundTransparency"] = 1;
			UI.Tree["40"]["Size"] = UDim2.new(0, 50, 0, 30);
			UI.Tree["40"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["40"]["Text"] = [[N/A]];
			UI.Tree["40"]["Name"] = [[Ping]];
			UI.Tree["40"]["Position"] = UDim2.new(0, 0, 0, 70);

			-- StarterGui.Hub.LeftBar.Profile.Stats.Ping.ms
			UI.Tree["41"] = Instance.new("TextLabel", UI.Tree["3d"]);
			UI.Tree["41"]["TextWrapped"] = true;
			UI.Tree["41"]["BorderSizePixel"] = 0;
			UI.Tree["41"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["41"]["TextSize"] = 13;
			UI.Tree["41"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["41"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["41"]["BackgroundTransparency"] = 1;
			UI.Tree["41"]["Size"] = UDim2.new(0, 50, 0, 10);
			UI.Tree["41"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["41"]["Text"] = [[ms]];
			UI.Tree["41"]["Name"] = [[ms]];
			UI.Tree["41"]["Position"] = UDim2.new(0, 0, 0, 70);

			-- StarterGui.Hub.LeftBar.Profile.Stats.UIListLayout
			UI.Tree["42"] = Instance.new("UIListLayout", UI.Tree["3c"]);
			UI.Tree["42"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			UI.Tree["42"]["Padding"] = UDim.new(0, 5);
			UI.Tree["42"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
			UI.Tree["42"]["SortOrder"] = Enum.SortOrder.LayoutOrder;
			UI.Tree["42"]["FillDirection"] = Enum.FillDirection.Horizontal;

			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime
			UI.Tree["43"] = Instance.new("Frame", UI.Tree["3c"]);
			UI.Tree["43"]["BorderSizePixel"] = 0;
			UI.Tree["43"]["BackgroundColor3"] = Color3.fromRGB(23, 23, 23);
			UI.Tree["43"]["Size"] = UDim2.new(0, 110, 0, 70);
			UI.Tree["43"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["43"]["Name"] = [[Playtime]];

			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime.UICorner
			UI.Tree["44"] = Instance.new("UICorner", UI.Tree["43"]);
			UI.Tree["44"]["CornerRadius"] = UDim.new(0, 10);

			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime.UIListLayout
			UI.Tree["45"] = Instance.new("UIListLayout", UI.Tree["43"]);
			UI.Tree["45"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
			UI.Tree["45"]["VerticalAlignment"] = Enum.VerticalAlignment.Center;
			UI.Tree["45"]["SortOrder"] = Enum.SortOrder.LayoutOrder;

			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime.Playtime
			UI.Tree["46"] = Instance.new("TextLabel", UI.Tree["43"]);
			UI.Tree["46"]["TextWrapped"] = true;
			UI.Tree["46"]["BorderSizePixel"] = 0;
			UI.Tree["46"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["46"]["TextSize"] = 22;
			UI.Tree["46"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["46"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["46"]["BackgroundTransparency"] = 1;
			UI.Tree["46"]["Size"] = UDim2.new(0, 70, 0, 30);
			UI.Tree["46"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["46"]["Text"] = Script.LocalPlayer.PlayTime;
			UI.Tree["46"]["Name"] = [[Playtime]];
			UI.Tree["46"]["Position"] = UDim2.new(0, 0, 0, 70);

			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime.Playtime.LocalScript
			UI.Tree["47"] = Instance.new("LocalScript", UI.Tree["46"]);


			-- StarterGui.Hub.LeftBar.Profile.Stats.Playtime.playing
			UI.Tree["48"] = Instance.new("TextLabel", UI.Tree["43"]);
			UI.Tree["48"]["TextWrapped"] = true;
			UI.Tree["48"]["BorderSizePixel"] = 0;
			UI.Tree["48"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["48"]["TextSize"] = 13;
			UI.Tree["48"]["FontFace"] = Font.new([[rbxasset://fonts/families/Ubuntu.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
			UI.Tree["48"]["TextColor3"] = Color3.fromRGB(255, 255, 255);
			UI.Tree["48"]["BackgroundTransparency"] = 1;
			UI.Tree["48"]["Size"] = UDim2.new(0, 50, 0, 10);
			UI.Tree["48"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
			UI.Tree["48"]["Text"] = [[playing]];
			UI.Tree["48"]["Name"] = [[playing]];
			UI.Tree["48"]["Position"] = UDim2.new(0, 0, 0, 70);
		
	end
	
	-- icons logic
	do
		local iconsTweenInfo = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out, 0, false, 0)

		local icons = {
			Settings = {
				Hover = false
			},
			Player = {
				Active = false
			},
			Executor = {
				Active = false
			},
			Home = {
				Active = true
			}
		}

		local function tweenIcon(instance)
			if icons.Settings.Hover then
				local tween = ts:Create(instance, iconsTweenInfo, {
					Size = UDim2.new(0, 37, 0, 37)
				})
				tween:Play()
			else
				local tween = ts:Create(instance, iconsTweenInfo, {
					Size = UDim2.new(0, 30, 0, 30)
				})
				tween:Play()
			end
		end

		local function doHoverEffect(instance)
			instance.MouseEnter:Connect(function()
				icons.Settings.Hover = true
				tweenIcon(instance)
			end)

			instance.MouseLeave:Connect(function()
				icons.Settings.Hover = false
				tweenIcon(instance)
			end)
		end

		local function isHovered(instance)
			local state = false

			instance.MouseEnter:Connect(function()
				state = true
			end)

			instance.MouseLeave:Connect(function()
				state = false
			end)

			return function()
				return state
			end
		end

		local function onClick(instance, callback)
			local getHoverState = isHovered(instance)

			uis.InputBegan:Connect(function(input, gp)
				if gp then return end

				if input.UserInputType == Enum.UserInputType.MouseButton1 and getHoverState() then
					callback()
				end
			end)
		end

		doHoverEffect(UI.Tree["c"])
		doHoverEffect(UI.Tree["e"])
		doHoverEffect(UI.Tree["f"])
		doHoverEffect(UI.Tree["10"])
		doHoverEffect(UI.Tree["11"])

		onClick(UI.Tree["11"], function() 
			icons.Home.Active = not icons.Home.Active 
			if icons.Home.Active then
				UI.Tree["30"].Visible = true
			else
				UI.Tree["30"].Visible = false
			end
		end)

		-- Function to get the state of each icon
		local function getIconState(iconName)
			if icons[iconName] then
				return icons[iconName]
			else
				return nil
			end
		end

	end
	
	-- Hour
	do
		local function SetHour()
			local script = UI.Tree["7"];
			local textLabel = script.Parent

			while true do
				textLabel.Text = os.date("%H:%S")
				wait(0.5)
			end

		end;
		task.spawn(SetHour);
	end
	
	
	return UI
end

UI.Init()
