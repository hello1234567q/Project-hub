-- UI Code
local gui = Instance.new("ScreenGui")
local frame = Instance.new("Frame")
local button = Instance.new("TextButton")
local clearButton = Instance.new("TextButton")
local codeLabel = Instance.new("TextLabel")

frame.Size = UDim2.new(0, 200, 0, 100)
frame.Position = UDim2.new(0, 100, 0, 100)
frame.BackgroundColor3 = Color3.new(1, 1, 1)

button.Text = "Run Code"
button.Size = UDim2.new(0, 100, 0, 30)
button.Position = UDim2.new(0, 50, 0, 70)

clearButton.Text = "Clear"
clearButton.Size = UDim2.new(0, 50, 0, 30)
clearButton.Position = UDim2.new(0, 150, 0, 70)

codeLabel.Size = UDim2.new(0, 190, 0, 50)
codeLabel.Position = UDim2.new(0, 5, 0, 10)
codeLabel.BackgroundColor3 = Color3.new(1, 1, 1)
codeLabel.TextColor3 = Color3.new(0, 0, 0)
codeLabel.FontSize = Enum.FontSize.Size14
codeLabel.TextWrapped = true
codeLabel.TextXAlignment = Enum.TextXAlignment.Left
codeLabel.Text = "Enter your code here..."

gui.Name = "CodeRunner"
frame.Parent = gui
button.Parent = frame
clearButton.Parent = frame
codeLabel.Parent = frame
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Code Runner
button.MouseButton1Click:Connect(function()
    local code, err = load(codeLabel.Text)
    if code then
        local success, err = pcall(code)
        if not success then
            print("Error running code: " .. err)
            return
        end
    else
        print("Error loading code: " .. err)
        return
    end
end)

-- Clear Button
clearButton.MouseButton1Click:Connect(function()
    codeLabel.Text = ""
end)
