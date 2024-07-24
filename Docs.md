use it like that:

local win = Library:New("Title")

local home = win:NewTab(18625889472) -- image id
win:NewSeparator()

Tab:Button(Text, Callback)
home:Label(Text)
Tab:Slider(Text, Min, Max, default, Callback(v))
Tab:Toggle(Text, Callback(v), Default)

win:Init()
