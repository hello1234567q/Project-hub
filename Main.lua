-- UI Creation
local gui = Instance.new("ScreenGui")
local codeRunnerFrame = Instance.new("Frame")
local runCodeButton = Instance.new("TextButton")
local clearButton = Instance.new("TextButton")
local codeLabel = Instance.new("TextLabel")
local errorLabel = Instance.new("TextLabel")

-- Set up UI elements
codeRunnerFrame.Size = UDim2.new(0, 200, 0, 100)
codeRunnerFrame.Position = UDim2.new(0, 100, 0, 100)
codeRunnerFrame.BackgroundColor3 = Color3.new(1, 1, 1)

runCodeButton.Text = "Run Code"
runCodeButton.Size = UDim2.new(0, 100, 0, 30)
runCodeButton.Position = UDim2.new(0, 50, 0, 70)

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

errorLabel.Size = UDim2.new(0, 190, 0, 20)
errorLabel.Position = UDim2.new(0, 5, 0, 60)
errorLabel.BackgroundColor3 = Color3.new(1, 1, 1)
errorLabel.TextColor3 = Color3.new(1, 0, 0)
errorLabel.FontSize = Enum.FontSize.Size14
errorLabel.TextWrapped = true
errorLabel.TextXAlignment = Enum.TextXAlignment.Left

-- Parent UI elements
gui.Name = "CodeRunner"
codeRunnerFrame.Parent = gui
runCodeButton.Parent = codeRunnerFrame
clearButton.Parent = codeRunnerFrame
codeLabel.Parent = codeRunnerFrame
errorLabel.Parent = codeRunnerFrame
gui.Parent = game.Players.LocalPlayer.PlayerGui

-- Event Handling
runCodeButton.MouseButton1Click:Connect(function()
    local code, err = load(codeLabel.Text)
    if code then
        local success, err = pcall(code)
        if not success then
            errorLabel.Text = "Error running code: " .. err
            return
        end
    else
        errorLabel.Text = "Error loading code: " .. err
        return
    end
end)

clearButton.MouseButton1Click:Connect(function()
    codeLabel.Text = ""
    errorLabel.Text = ""
end)
