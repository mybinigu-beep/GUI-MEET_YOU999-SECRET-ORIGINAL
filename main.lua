-- ==============================================
-- GUI SCRIPT MEET_YOU999 SUPER SECRET ORIGINAL--
-- ==============================================
local Players = game:GetService("Players")
local ReplicatedFirst = game:GetService("ReplicatedFirst")
local TweenService = game:GetService("TweenService")
local RunService = game:GetService("RunService")
local UIS = game:GetService("UserInputService")
local SoundService = game:GetService("SoundService")
local player = Players.LocalPlayer

-- Hapus layar muat bawaan
ReplicatedFirst:RemoveDefaultLoadingScreen()

-- 👉 LAYAR AWAL
local screenGuiStart = Instance.new("ScreenGui")
screenGuiStart.Name = "ClickScreen"
screenGuiStart.IgnoreGuiInset = true
screenGuiStart.DisplayOrder = 999
screenGuiStart.Parent = player:WaitForChild("PlayerGui")

local bgStart = Instance.new("Frame")
bgStart.Size = UDim2.new(1, 0, 1, 0)
bgStart.BackgroundColor3 = Color3.fromRGB(240, 255, 245) -- Hijau sangat muda
bgStart.BorderSizePixel = 0
bgStart.Parent = screenGuiStart

local clickBtn = Instance.new("TextButton")
clickBtn.Size = UDim2.new(0.3, 0, 0.1, 0)
clickBtn.Position = UDim2.new(0.35, 0, 0.45, 0)
clickBtn.BackgroundColor3 = Color3.fromRGB(70, 180, 110) -- Hijau utama
clickBtn.BackgroundTransparency = 0.2
clickBtn.Text = "CLICK ME"
clickBtn.TextColor3 = Color3.new(1, 1, 1) -- Putih
clickBtn.Font = Enum.Font.GothamBold
clickBtn.TextScaled = true
clickBtn.Parent = bgStart

-- Jalankan menu setelah diklik
clickBtn.MouseButton1Click:Connect(function()
	local tweenInfo = TweenInfo.new(0.5, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
	TweenService:Create(bgStart, tweenInfo, {BackgroundTransparency = 1}):Play()
	TweenService:Create(clickBtn, tweenInfo, {BackgroundTransparency = 1, TextTransparency = 1}):Play()
	task.wait(0.5)
	screenGuiStart:Destroy()

	-- ==============================================
	-- 👉 MENU UTAMA
	-- ==============================================
	local screenGui = Instance.new("ScreenGui")
	screenGui.Name = "HijauGui"
	screenGui.Parent = player:WaitForChild("PlayerGui")

	-- Kotak utama
	local frame = Instance.new("Frame")
	frame.Name = "BY MEET_YOU999"
	frame.Size = UDim2.new(0, 500, 0, 400)
	frame.Position = UDim2.new(0.5, -250, 0.5, -200)
	frame.BackgroundColor3 = Color3.fromRGB(235, 250, 240) -- Latar hijau sangat muda
	frame.ClipsDescendants = true
	frame.Parent = screenGui

	-- Bilah judul
	local titleBar = Instance.new("Frame")
	titleBar.Name = "TitleBar"
	titleBar.Size = UDim2.new(1, 0, 0, 30)
	titleBar.Position = UDim2.new(0, 0, 0, 0)
	titleBar.BackgroundColor3 = Color3.fromRGB(60, 160, 100) -- Hijau gelap
	titleBar.Parent = frame

	local titleText = Instance.new("TextLabel")
	titleText.Size = UDim2.new(1, -40, 1, 0)
	titleText.Position = UDim2.new(0, 10, 0, 0)
	titleText.BackgroundTransparency = 1
	titleText.Text = "BY MEET_YOU999"
	titleText.TextColor3 = Color3.new(1, 1, 1) -- Putih
	titleText.TextXAlignment = Enum.TextXAlignment.Left
	titleText.TextScaled = true
	titleText.Parent = titleBar

	-- Tombol kecilkan
	local minimizeBtn = Instance.new("TextButton")
	minimizeBtn.Name = "MinimizeButton"
	minimizeBtn.Size = UDim2.new(0, 30, 0, 30)
	minimizeBtn.Position = UDim2.new(1, -30, 0, 0)
	minimizeBtn.Text = "-"
	minimizeBtn.TextColor3 = Color3.new(1,1,1)
	minimizeBtn.TextScaled = true
	minimizeBtn.BackgroundColor3 = Color3.fromRGB(50, 140, 90) -- Hijau lebih gelap
	minimizeBtn.Parent = titleBar

	local minimized = false
	local originalSize = frame.Size

	minimizeBtn.MouseButton1Click:Connect(function()
		minimized = not minimized
		if minimized then
			frame:TweenSize(UDim2.new(0, 500, 0, 30), "Out", "Quad", 0.2, true)
			minimizeBtn.Text = "+"
		else
			frame:TweenSize(originalSize, "Out", "Quad", 0.2, true)
			minimizeBtn.Text = "-"
		end
	end)

	-- Tombol Lari Cepat
	local sprintBtn = Instance.new("TextButton")
	sprintBtn.Name = "SprintButton"
	sprintBtn.Size = UDim2.new(0, 140, 0, 40)
	sprintBtn.Position = UDim2.new(0, 20, 0, 50)
	sprintBtn.Text = "Super Sprint: OFF"
	sprintBtn.TextScaled = true
	sprintBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215) -- Hijau pudar
	sprintBtn.Parent = frame

	-- Tombol Lompat Tinggi
	local jumpBtn = Instance.new("TextButton")
	jumpBtn.Name = "JumpButton"
	jumpBtn.Size = UDim2.new(0, 140, 0, 40)
	jumpBtn.Position = UDim2.new(0, 180, 0, 50)
	jumpBtn.Text = "High Jump: OFF"
	jumpBtn.TextScaled = true
	jumpBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
	jumpBtn.Parent = frame

	-- Tombol Tembus Dinding
	local noclipBtn = Instance.new("TextButton")
	noclipBtn.Name = "NoclipButton"
	noclipBtn.Size = UDim2.new(0, 140, 0, 40)
	noclipBtn.Position = UDim2.new(0, 340, 0, 50)
	noclipBtn.Text = "Noclip: OFF"
	noclipBtn.TextScaled = true
	noclipBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
	noclipBtn.Parent = frame

	-- Tombol Tak Terlihat
	local invisBtn = Instance.new("TextButton")
	invisBtn.Name = "InvisibleButton"
	invisBtn.Size = UDim2.new(0, 140, 0, 40)
	invisBtn.Position = UDim2.new(0, 20, 0, 100)
	invisBtn.Text = "Invisible: OFF"
	invisBtn.TextScaled = true
	invisBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
	invisBtn.Parent = frame

	-- ==============================================
	-- 👉 FITUR JUMPSCARE ✅ SUDAH DIPERBAIKI 100% JALAN
	-- ==============================================
	local jumpscareBtn = Instance.new("TextButton")
	jumpscareBtn.Name = "JumpscareButton"
	jumpscareBtn.Size = UDim2.new(0, 140, 0, 40)
	jumpscareBtn.Position = UDim2.new(0, 180, 0, 100)
	jumpscareBtn.Text = "Jumpscare!"
	jumpscareBtn.TextScaled = true
	jumpscareBtn.BackgroundColor3 = Color3.fromRGB(255, 100, 100)
	jumpscareBtn.Parent = frame

	-- Frame Jumpscare (PALING DEPAN SEKALI)
	local jumpscareFrame = Instance.new("Frame")
	jumpscareFrame.Name = "JumpscareFrame"
	jumpscareFrame.Size = UDim2.new(1, 0, 1, 0)
	jumpscareFrame.Position = UDim2.new(0, 0, 0, 0)
	jumpscareFrame.BackgroundColor3 = Color3.new(0, 0, 0)
	jumpscareFrame.BackgroundTransparency = 1
	jumpscareFrame.ZIndex = 99999 -- Dinaikin biar nggak ketutup apapun
	jumpscareFrame.Parent = screenGui

	-- ✅ GAMBAR WOODY — ID BARU + DIATUR AGAR PENUH LAYAR
	local jumpscareImage = Instance.new("ImageLabel")
	jumpscareImage.Name = "JumpscareImage"
	jumpscareImage.Size = UDim2.new(1.2, 0, 1.2, 0) -- Lebih besar dari layar
	jumpscareImage.AnchorPoint = Vector2.new(0.5,0.5)
	jumpscareImage.Position = UDim2.new(0.5, 0, 0.5, 0)
	jumpscareImage.BackgroundTransparency = 1
	jumpscareImage.ScaleType = Enum.ScaleType.Stretch -- ✅ INI YANG BIKAN GAMBAR MUNCUL BENERAN
	jumpscareImage.Image = "rbxassetid://14421038961" -- ✅ ID GAMBAR BARU AMAN
	jumpscareImage.ImageTransparency = 1
	jumpscareImage.ZIndex = 999999
	jumpscareImage.Parent = jumpscareFrame

	-- ✅ SUARA TERIAK CEWEK — DIPINDAH KESINI + VOLUME AMAN PALING KERAS
	local jumpscareSound = Instance.new("Sound")
	jumpscareSound.Name = "JumpscareSound"
	jumpscareSound.SoundId = "rbxassetid://912584891" -- ✅ ID SUARA BARU, KERAS & AMAN
	jumpscareSound.Volume = 2.8 -- ⚠️ BATAS MAKSIMAL ROBLOX, LEBIH DARI 3 = DIAM
	jumpscareSound.Looped = false
	jumpscareSound.Parent = jumpscareFrame -- ✅ Dipindah dari SoundService biar Delta nggak blokir

	-- ✅ FUNGSI DIPERBAIKI — MUNCUL SEKETIKA + GETAR
	local function playJumpscare()
		jumpscareImage.Image = jumpscareImage.Image -- Paksa muat dulu
		jumpscareFrame.BackgroundTransparency = 0 -- LANGSUNG HITAM TANPA TWEEN
		jumpscareImage.ImageTransparency = 0 -- GAMBAR LANGSUNG MUNCUL 0 DETIK
		jumpscareSound.TimePosition = 0
		jumpscareSound:Play() -- ✅ PASTI BUNYI

		-- Getar layar biar makin kaget
		for i=1,25 do
			jumpscareImage.Rotation = math.random(-10,10)
			jumpscareImage.Position = UDim2.new(0.5 + math.random(-3,3)/100,0, 0.5 + math.random(-3,3)/100,0)
			task.wait()
		end

		task.wait(0.8) -- Tampil sebentar
		jumpscareFrame.BackgroundTransparency = 1
		jumpscareImage.ImageTransparency = 1
		jumpscareImage.Rotation = 0
		jumpscareImage.Position = UDim2.new(0.5,0,0.5,0)
	end

	jumpscareBtn.MouseButton1Click:Connect(playJumpscare)

	-- ==============================================
	-- 👉 PEMINDAHAN PEMAIN (TETAP SAMA PERSIS)
	-- ==============================================
	local tpLabel = Instance.new("TextLabel")
	tpLabel.Size = UDim2.new(1, -40, 0, 25)
	tpLabel.Position = UDim2.new(0, 20, 0, 150)
	tpLabel.BackgroundTransparency = 1
	tpLabel.Text = "Teleport to Player:"
	tpLabel.TextColor3 = Color3.fromRGB(40, 120, 70) -- Hijau tua
	tpLabel.TextXAlignment = Enum.TextXAlignment.Left
	tpLabel.TextScaled = true
	tpLabel.Font = Enum.Font.SourceSansBold
	tpLabel.Parent = frame

	local playerListFrame = Instance.new("ScrollingFrame")
	playerListFrame.Name = "PlayerList"
	playerListFrame.Size = UDim2.new(1, -40, 1, -190)
	playerListFrame.Position = UDim2.new(0, 20, 0, 180)
	playerListFrame.BackgroundColor3 = Color3.fromRGB(220, 245, 230) -- Hijau sangat muda
	playerListFrame.BorderColor3 = Color3.fromRGB(100, 190, 140) -- Garis hijau
	playerListFrame.BorderSizePixel = 1
	playerListFrame.ScrollBarThickness = 6
	playerListFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
	playerListFrame.Parent = frame

	local UIListLayout = Instance.new("UIListLayout")
	UIListLayout.Padding = UDim.new(0, 5)
	UIListLayout.Parent = playerListFrame

	local function teleportToPlayer(targetPlayer)
		local character = player.Character
		local targetCharacter = targetPlayer.Character
		if not character or not targetCharacter then return end
		local hrp = character:FindFirstChild("HumanoidRootPart")
		local targetHrp = targetCharacter:FindFirstChild("HumanoidRootPart")
		if hrp and targetHrp then
			hrp.CFrame = targetHrp.CFrame + Vector3.new(3, 0, 0)
		end
	end

	local function refreshPlayerList()
		for _, child in ipairs(playerListFrame:GetChildren()) do
			if child:IsA("TextButton") then child:Destroy() end
		end
		for _, otherPlayer in ipairs(Players:GetPlayers()) do
			if otherPlayer ~= player then
				local btn = Instance.new("TextButton")
				btn.Name = otherPlayer.Name
				btn.Size = UDim2.new(1, -10, 0, 35)
				btn.BackgroundColor3 = Color3.fromRGB(190, 230, 210)
				btn.TextColor3 = Color3.fromRGB(30, 90, 60)
				btn.Text = otherPlayer.Name .. " (@" .. otherPlayer.Name .. ")"
				btn.TextScaled = true
				btn.Parent = playerListFrame
				btn.MouseButton1Click:Connect(function() teleportToPlayer(otherPlayer) end)
			end
		end
		playerListFrame.CanvasSize = UDim2.new(0, 0, 0, UIListLayout.AbsoluteContentSize.Y + 10)
	end
	refreshPlayerList()
	Players.PlayerAdded:Connect(refreshPlayerList)
	Players.PlayerRemoving:Connect(refreshPlayerList)

	-- ==============================================
	-- 👉 LOGIKA FUNGSI (TETAP SAMA PERSIS)
	-- ==============================================
	local sprinting = false
	local normalSpeed = 16
	local sprintSpeed = 80

	local highJumping = false
	local normalJumpPower = 50
	local highJumpPower = 150

	local noclipping = false
	local noclipConnection
	local invisible = false
	local invisConnection

	local function getHumanoid()
		local char = player.Character
		return char and char:FindFirstChildOfClass("Humanoid")
	end

	sprintBtn.MouseButton1Click:Connect(function()
		sprinting = not sprinting
		local hum = getHumanoid()
		if sprinting then
			if hum then hum.WalkSpeed = sprintSpeed end
			sprintBtn.Text = "Super Sprint: ON"
			sprintBtn.BackgroundColor3 = Color3.fromRGB(80, 200, 130)
		else
			if hum then hum.WalkSpeed = normalSpeed end
			sprintBtn.Text = "Super Sprint: OFF"
			sprintBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
		end
	end)

	jumpBtn.MouseButton1Click:Connect(function()
		highJumping = not highJumping
		local hum = getHumanoid()
		if hum then hum.UseJumpPower = true end
		if highJumping then
			if hum then hum.JumpPower = highJumpPower end
			jumpBtn.Text = "High Jump: ON"
			jumpBtn.BackgroundColor3 = Color3.fromRGB(80, 200, 130)
		else
			if hum then hum.JumpPower = normalJumpPower end
			jumpBtn.Text = "High Jump: OFF"
			jumpBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
		end
	end)

	noclipBtn.MouseButton1Click:Connect(function()
		noclipping = not noclipping
		if noclipping then
			noclipBtn.Text = "Noclip: ON"
			noclipBtn.BackgroundColor3 = Color3.fromRGB(80, 200, 130)
			if noclipConnection then noclipConnection:Disconnect() end
			noclipConnection = RunService.Stepped:Connect(function()
				local char = player.Character
				if not char then return end
				for _, p in ipairs(char:GetDescendants()) do
					if p:IsA("BasePart") then p.CanCollide = false end
				end
			end)
		else
			noclipBtn.Text = "Noclip: OFF"
			noclipBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
			if noclipConnection then noclipConnection:Disconnect() end
			local char = player.Character
			if char then
				for _, p in ipairs(char:GetDescendants()) do
					if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then p.CanCollide = true end
				end
			end
		end
	end)

	invisBtn.MouseButton1Click:Connect(function()
		invisible = not invisible
		if invisible then
			invisBtn.Text = "Invisible: ON"
			invisBtn.BackgroundColor3 = Color3.fromRGB(80, 200, 130)
			if invisConnection then invisConnection:Disconnect() end
			invisConnection = RunService.Stepped:Connect(function()
				local char = player.Character
				if not char then return end
				for _, p in ipairs(char:GetDescendants()) do
					if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then p.Transparency = 1 end
					if p:IsA("Decal") then p.Transparency = 1 end
				end
			end)
		else
			invisBtn.Text = "Invisible: OFF"
			invisBtn.BackgroundColor3 = Color3.fromRGB(200, 235, 215)
			if invisConnection then invisConnection:Disconnect() end
			local char = player.Character
			if char then
				for _, p in ipairs(char:GetDescendants()) do
					if p:IsA("BasePart") and p.Name ~= "HumanoidRootPart" then p.Transparency = 0 end
					if p:IsA("Decal") then p.Transparency = 0 end
				end
			end
		end
	end)

	-- Tetap aktif saat muncul ulang
	player.CharacterAdded:Connect(function(char)
		local hum = char:WaitForChild("Humanoid")
		hum.UseJumpPower = true
		hum.WalkSpeed = sprinting and sprintSpeed or normalSpeed
		hum.JumpPower = highJumping and highJumpPower or normalJumpPower
	end)

	-- Seret menu
	local dragging = false
	local dragInput, dragStart, startPos
	local function updateDrag(inp)
		local delta = inp.Position - dragStart
		frame.Position = UDim2.new(
			startPos.X.Scale, startPos.X.Offset + delta.X,
			startPos.Y.Scale, startPos.Y.Offset + delta.Y
		)
	end

	titleBar.InputBegan:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseButton1 or inp.UserInputType == Enum.UserInputType.Touch then
			dragging = true
			dragStart = inp.Position
			startPos = frame.Position
			inp.Changed:Connect(function()
				if inp.InputState == Enum.InputState.End then dragging = false end
			end)
		end
	end)
	titleBar.InputChanged:Connect(function(inp)
		if inp.UserInputType == Enum.UserInputType.MouseMovement or inp.UserInputType == Enum.UserInputType.Touch then
			dragInput = inp
		end
	end)
	UIS.InputChanged:Connect(function(inp)
		if inp == dragInput and dragging then updateDrag(inp) end
	end)
end)
