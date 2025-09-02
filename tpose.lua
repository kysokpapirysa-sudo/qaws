return function()
	local player = game.Players.LocalPlayer
	local char = player.Character or player.CharacterAdded:Wait()
	local hum = char:FindFirstChildOfClass("Humanoid")
	if not hum then return end

	local anim = Instance.new("Animation")
	anim.AnimationId = "rbxassetid://148840371" -- T-поза
	local track = (hum:FindFirstChildOfClass("Animator") or Instance.new("Animator", hum)):LoadAnimation(anim)
	track:Play()
end
