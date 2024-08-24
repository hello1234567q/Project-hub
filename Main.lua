local Rayfield = loadstring(game:HttpGet('https://sirius.menu/rayfield'))()
local Window = Rayfield:CreateWindow({
   Name = "Mm2 hub",
   LoadingTitle = "Hehe hub",
   LoadingSubtitle = "by Gamingtv xdd",
   ConfigurationSaving = {
      Enabled = true,
      FolderName = Workspace, -- Create a custom folder for your hub/game
      FileName = "Big Hub"
   },
   Discord = {
      Enabled = false,
      Invite = "noinvitelink", -- The Discord invite code, do not include discord.gg/. E.g. discord.gg/ABCD would be ABCD
      RememberJoins = true -- Set this to false to make them join the discord every time they load it up
   },
   KeySystem = true, -- Set this to true to use our key system
   KeySettings = {
      Title = "Untitled",
      Subtitle = "Key System",
      Note = "No method of obtaining the key is provided",
      FileName = "Key", -- It is recommended to use something unique as other scripts using Rayfield may overwrite your key file
      SaveKey = true, -- The user's key will be saved, but if you change the key, they will be unable to use your script
      GrabKeyFromSite = true, -- If this is true, set Key below to the RAW site you would like Rayfield to get the key from
      Key = {"https://pastebin.com/raw/0f5DJcTz"} -- List of keys that will be accepted by the system, can be RAW file links (pastebin, github etc) or simple strings ("hello","key22")
   }
})

local Tab = Window:CreateTab("Player", 4483362458) -- Title, Image
local Tab2 = Window:CreateTab("Info", 4483362458) -- Title, Image
local Tab3 = Window:CreateTab("Roles", 4483362458) -- Title, Image
local Tab4 = Window:CreateTab("Credits", 4483362458) -- Title, Image

local Section = Tab:CreateSection("walkspeed and jump power")

local Input = Tab:CreateInput({
   Name = "Set value",
   PlaceholderText = "Input Placeholder",
   RemoveTextAfterFocusLost = false,
   Callback = function(Text)
   -- The function that takes place when the input is changed
   -- The variable (Text) is a string for the value in the text box
   end,
})
