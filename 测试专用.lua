if getgenv().ED_AntiKick then
	return
end

getgenv().ED_AntiKick = {
	Enabled = true, -- Set to false if you want to disable the Anti-Kick.
	SendNotifications = true, -- Set to true if you want to get notified for every event
	CheckCaller = true -- Set to true if you want to disable kicking by other executed scripts
}
local Lengui = loadstring(game:HttpGet("https://raw.githubusercontent.com/LENG8123/UI/refs/heads/main/%E5%86%B7library.lua"))()     
local win = Lengui:new("冷脚本")
--
local UITab1 = win:Tab("『河北唐县』",'87437251671184')

local about = UITab1:section("『LENG Script』",false)

about:Button("Trucker",function()
game:GetService('RunService').Stepped:Connect(function()
    local virtualUser = game:GetService('VirtualUser')
    virtualUser:CaptureController()

    game:GetService("ReplicatedStorage").TeamSwitch:FireServer("Trucker")
    task.wait(1)

    for _, v in ipairs(game:GetService("Workspace").TruckingJob:GetChildren()) do
        if v.Name == "Depot" then
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = v.CFrame + Vector3.new(0, 3, 0)
            task.wait(1)

            game:GetService("VirtualInputManager"):SendKeyEvent(true, "E" , false , game)
            task.wait(0.1)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E" , false , game)
            task.wait(0.5)
            game:GetService("VirtualInputManager"):SendKeyEvent(false, "E" , false , game)
            task.wait(0.3)
            
            game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalTrucks:InvokeServer()
            task.wait(1.5)
            
            game:GetService("ReplicatedStorage").Packages.Shared.Network.RemoteFunctions.ClientRequestCoalJob:InvokeServer(workspace.TruckingJob.Coal.routeA, "2018 FAW J6P Facelift")
            task.wait(1.5)
            
            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = CFrame.new(10586.1416, 43.4061317, 3235.26807, -0.566008806, 0.0127263758, -0.824300945, -0.00799922366, 0.999749005, 0.0209278092, 0.824360371, 0.0184390917, -0.565764904)
            task.wait(1.5)
            
            for _, pickup in ipairs(game:GetService("Workspace").TruckingJob.Coal.routeA:GetChildren()) do
                if pickup.Name == "Pickup" then
                    game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = pickup.CFrame + Vector3.new(0, 3, 0)
                    task.wait(3)

                    for _, dropoff in ipairs(game:GetService("Workspace").TruckingJob.Coal.routeA:GetChildren()) do
                        if dropoff.Name == "Dropoff" then
                            game.Players.LocalPlayer.Character.HumanoidRootPart.CFrame = dropoff.CFrame + Vector3.new(0, 3, 0)
                            task.wait(3)
                        end
                    end
                end
            end
        end
    end
    task.wait(1)
end)
