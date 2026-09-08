--// MONK RizZ YaY
--// Fully Made By MonK
--// Place inside Your Executor

local Players = game:GetService("Players")
local TweenService = game:GetService("TweenService")
local UserInputService = game:GetService("UserInputService")
local TextChatService = game:GetService("TextChatService")
local SoundService = game:GetService("SoundService")

local Player = Players.LocalPlayer
local PlayerGui = Player:WaitForChild("PlayerGui")

local GUI_NAME = "MONK_RIZZ_YAY"
local MAIN_COLOR = Color3.fromRGB(255, 20, 40)
local DARK_COLOR = Color3.fromRGB(18, 5, 8)

local oldGui = PlayerGui:FindFirstChild(GUI_NAME)
if oldGui then oldGui:Destroy() end

local RizzLines = {
	"Are you WiFi? Because I'm feeling a connection.",
	"Are you a star? Because you just lit up my screen.",
	"Do you have a map? I keep getting lost in your vibe.",
	"Are you a magician? Because everyone else disappeared.",
	"Is your name Google? Because you have everything I'm searching for.",
	"Are you made of pixels? Because you look amazing in every frame.",
	"Are you a keyboard? Because you're just my type.",
	"Are you a notification? Because I get excited whenever you appear.",
	"Are you a checkpoint? Because I want to come back to you.",
	"Are you an update? Because you just improved my day.",
	"Are you a gamepass? Because you're looking premium.",
	"Are you a Roblox badge? Because you're hard to earn.",
	"Are you a developer? Because you just coded yourself into my thoughts.",
	"Are you an obby? Because I'd take every step to reach you.",
	"Are you a private server? Because I'd like some time with you.",
	"Are you a leaderboard? Because you are number one.",
	"Are you an admin command? Because you have total control of my attention.",
	"Are you a rare item? Because I don't see anyone like you twice.",
	"Are you a Robux icon? Because you caught my attention instantly.",
	"Are you a loading screen? Because I can wait forever for you.",
	"Are you a spawn point? Because I always want to return.",
	"Are you a legendary item? Because you're impossible to ignore.",
	"Are you a game update? Because you changed everything.",
	"Are you a VIP server? Because you look exclusive.",
	"Are you a sword? Because you cut through every distraction.",
	"Are you a potion? Because you boosted my mood.",
	"Are you a speed coil? Because you make my heart race.",
	"Are you a gravity coil? Because you keep pulling me in.",
	"Are you a lucky block? Because meeting you feels rare.",
	"Are you a badge? Because I want you in my collection.",
	"Are you a portal? Because you take me somewhere better.",
	"Are you a compass? Because you keep me going in the right direction.",
	"Are you a trophy? Because you deserve the top spot.",
	"Are you a quest? Because I want to complete every step.",
	"Are you a treasure chest? Because you're full of surprises.",
	"Are you a boss fight? Because you have my full attention.",
	"Are you a game lobby? Because everyone wants to join you.",
	"Are you a server boost? Because you just raised my mood.",
	"Are you an XP boost? Because you make everything better.",
	"Are you a rare drop? Because I wasn't expecting to find you.",
	"Are you a Roblox avatar? Because your style is unmatched.",
	"Are you a custom animation? Because you caught my eye.",
	"Are you a screenshot? Because I want to remember this moment.",
	"Are you a developer console? Because you have access to my thoughts.",
	"Are you a script? Because you keep running through my mind.",
	"Are you an API? Because I want a connection.",
	"Are you a GUI? Because you make everything easier.",
	"Are you a button? Because I really want to click with you.",
	"Are you a cursor? Because you keep following my attention.",
	"Are you a server? Because I want to spend more time here.",
	"Are you a game update? Because you are exactly what I needed.",
	"Are you a sunset? Because you make everything look better.",
	"Are you moonlight? Because you make the night brighter.",
	"Are you music? Because you make everything sound better.",
	"Are you a notification? Because seeing you always makes me smile.",
	"Are you a dream? Because I don't want to wake up.",
	"Are you a camera? Because every time I see you, I smile.",
	"Are you a magnet? Because I keep getting pulled toward your energy.",
	"Are you a battery? Because you recharge my mood.",
	"Are you a charger? Because you bring my energy back.",
	"Are you a controller? Because you have my attention.",
	"Are you a headset? Because I'd listen to you all day.",
	"Are you a microphone? Because you make everything worth hearing.",
	"Are you a playlist? Because I could spend all day with you.",
	"Are you a beat? Because you keep my heart on rhythm.",
	"Are you a melody? Because you're stuck in my head.",
	"Are you a notification sound? Because I always notice you.",
	"Are you a keyboard shortcut? Because you make everything faster.",
	"Are you a password? Because you're impossible to forget.",
	"Are you an algorithm? Because somehow you keep appearing in my thoughts.",
	"Are you a search result? Because I finally found what I was looking for.",
	"Are you a browser tab? Because I don't want to close you.",
	"Are you a bookmark? Because I want to save this moment.",
	"Are you a cloud? Because you make my day feel lighter.",
	"Are you lightning? Because you just shocked my attention.",
	"Are you thunder? Because you definitely made an entrance.",
	"Are you fire? Because your energy is impossible to ignore.",
	"Are you ice? Because you just froze my train of thought.",
	"Are you a rainbow? Because you make everything more colorful.",
	"Are you sunshine? Because you brighten every room.",
	"Are you a star? Because you stand out from everything else.",
	"Are you the moon? Because I keep looking your way.",
	"Are you gravity? Because I can't stop being drawn in.",
	"Are you oxygen? Because you make the moment feel alive.",
	"Are you a breeze? Because your vibe is refreshing.",
	"Are you a wave? Because you just changed the whole atmosphere.",
	"Are you a puzzle? Because I want to figure out your vibe.",
	"Are you a mystery? Because you're impossible not to notice.",
	"Are you a masterpiece? Because every detail stands out.",
	"Are you an artist? Because your vibe is a work of art.",
	"Are you a camera lens? Because you bring everything into focus.",
	"Are you a spotlight? Because you steal the whole scene.",
	"Are you a stage? Because you deserve everyone's attention.",
	"Are you a microphone? Because you have main-character energy.",
	"Are you a movie? Because I could watch your story unfold.",
	"Are you a plot twist? Because I wasn't expecting you.",
	"Are you the final boss? Because you're unforgettable.",
	"Are you the main quest? Because you're my priority.",
	"Are you a side quest? Because I still want to explore.",
	"Are you an achievement? Because meeting you feels like a win.",
	"Are you a victory screen? Because you just made my day.",
	"Are you a respawn? Because you brought my energy back.",
	"Are you a save point? Because I want to remember this moment.",
	"Are you a rare skin? Because your style is elite.",
	"Are you a limited item? Because you are one of a kind.",
	"Are you a secret level? Because discovering you was unexpected.",
	"Are you a speedrun? Because time flies when you're around.",
	"Are you a combo? Because you just hit every point.",
	"Are you a critical hit? Because that one landed perfectly.",
	"Are you a perfect score? Because you nailed it.",
	"Are you a high score? Because you just went straight to number one.",
	"Are you a leaderboard reset? Because you changed the rankings.",
	"Are you a rare pet? Because you're absolutely legendary.",
	"Are you a lucky spin? Because meeting you feels like winning.",
	"Are you a daily reward? Because seeing you makes the day better.",
	"Are you a quest reward? Because you were worth the effort.",
	"Are you a checkpoint? Because you make the journey better.",
	"Are you a teleport button? Because you instantly improve the situation.",
	"Are you a Roblox event? Because everyone notices when you arrive.",
	"Are you a game icon? Because you're impossible to miss.",
	"Are you a profile picture? Because you look great everywhere.",
	"Are you a username? Because I won't forget you.",
	"Are you a display name? Because yours stands out.",
	"Are you a friend request? Because I'd definitely accept.",
	"Are you a party invite? Because I'd join instantly.",
	"Are you a server invite? Because I'm ready to join the vibe.",
	"Are you a private chat? Because you have my attention.",
	"Are you a message? Because I was hoping you'd appear.",
	"Are you a ping? Because you got my attention instantly.",
	"Are you a notification badge? Because I can't ignore you.",
	"Are you a typing indicator? Because now I'm curious what you'll say.",
	"Are you a chat bubble? Because you just popped into my thoughts.",
	"Are you a teammate? Because you make the game better.",
	"Are you a duo queue? Because we'd make a great team.",
	"Are you a carry? Because you just carried the whole vibe.",
	"Are you an MVP? Because you clearly earned it.",
	"Are you a clutch play? Because you saved the moment.",
	"Are you a perfect round? Because everything went right.",
	"Are you a winning streak? Because I don't want this to end.",
	"Are you a GG? Because meeting you was a good game.",
	"Are you an emote? Because you just made me smile.",
	"Are you an animation pack? Because you've got style.",
	"Are you an avatar editor? Because you just changed my perspective.",
	"Are you a catalog item? Because you caught my eye.",
	"Are you a premium item? Because you have premium energy.",
	"Are you a limited UGC? Because you're hard to find.",
	"Are you a collectible? Because you're worth keeping in mind.",
	"Are you a badge hunt? Because I want to discover everything about you.",
	"Are you a secret code? Because you unlocked my curiosity.",
	"Are you a code update? Because you just changed my system.",
	"Are you a bug fix? Because you fixed my mood.",
	"Are you a patch note? Because you improved the whole experience.",
	"Are you a server restart? Because you refreshed my energy.",
	"Are you a clean UI? Because everything about you looks right.",
	"Are you a neon sign? Because you stand out instantly.",
	"Are you a red alert? Because you definitely got my attention.",
	"Are you a lightning bolt? Because you arrived with impact.",
	"Are you a firework? Because you make the moment exciting.",
	"Are you a glow effect? Because you brighten the whole screen.",
	"Are you a particle effect? Because you add something special.",
	"Are you a highlight? Because you are the best part of the scene.",
	"Are you a thumbnail? Because you are impossible to scroll past.",
	"Are you a title? Because you deserve to be at the top.",
	"Are you a YouTube notification? Because I always want to see you.",
	"Are you a subscriber? Because I'd never want to lose you.",
	"Are you a like button? Because you just got my attention.",
	"Are you a comment? Because I'd love to hear from you.",
	"Are you a creator? Because you create a better vibe.",
	"Are you a video? Because I could replay this moment.",
	"Are you an intro? Because you made a strong first impression.",
	"Are you an outro? Because I don't want the moment to end.",
	"Are you a notification bell? Because you keep things exciting.",
	"Are you a crown? Because you belong on top.",
	"Are you a legend? Because ordinary words don't fit.",
	"Are you a classic? Because you'll never go out of style.",
	"Are you a favorite song? Because I keep coming back.",
	"Are you a power-up? Because you boosted my whole mood.",
	"Are you an ultimate ability? Because you're seriously impressive.",
	"Are you a shield? Because you make the vibe feel safe.",
	"Are you armor? Because your style is strong.",
	"Are you a healing item? Because you just fixed my mood.",
	"Are you a map? Because you make everything easier to navigate.",
	"Are you a quest marker? Because you caught my attention.",
	"Are you a mission objective? Because you are impossible to ignore.",
	"Are you a reward chest? Because you're full of good surprises.",
	"Are you a loot drop? Because finding you was lucky.",
	"Are you a rare spawn? Because you're not something I see every day.",
	"Are you a secret achievement? Because discovering you feels special.",
	"Are you a hidden room? Because I want to explore your vibe.",
	"Are you an Easter egg? Because finding you made my day.",
	"Are you a game mechanic? Because you just changed the rules.",
	"Are you a developer update? Because you improved everything.",
	"Are you a patch? Because you fixed my mood.",
	"Are you a hotfix? Because you solved the problem instantly.",
	"Are you a function? Because you make everything work.",
	"Are you a variable? Because you keep changing my mood.",
	"Are you a loop? Because I keep coming back to you.",
	"Are you a boolean? Because my answer is definitely yes.",
	"Are you a module? Because you complete the system.",
	"Are you a service? Because you make everything easier.",
	"Are you an event? Because you make things happen.",
	"Are you a connection? Because the signal feels strong.",
	"Are you a database? Because I want to remember this.",
	"Are you a cloud save? Because I want this moment stored.",
	"Are you a slider? Because you just turned the vibe up.",
	"Are you a refresh button? Because you make everything feel new.",
	"Are you a search bar? Because you're exactly what I was looking for.",
	"Are you a homepage? Because I keep coming back.",
	"Are you a favorite? Because you're at the top of my list.",
	"Are you a browser? Because you opened a new world.",
	"Are you an icon? Because you're impossible to ignore.",
	"Are you a cursor? Because my attention follows you.",
	"Are you a mouse click? Because you made an instant impact.",
	"Are you a shortcut? Because you made everything easier.",
	"Are you a profile? Because I want to know the story behind it.",
	"Are you an avatar? Because your style is on point.",
	"Are you a skin? Because you look legendary.",
	"Are you an emote? Because you bring personality to the game.",
	"Are you a lobby? Because everyone wants to hang around.",
	"Are you a party? Because your vibe is impossible to ignore.",
	"Are you a duo? Because two good vibes are better than one.",
	"Are you a squad? Because your energy brings everyone together.",
	"Are you a carry? Because you just carried the conversation.",
	"Are you a clutch? Because you saved the whole vibe.",
	"Are you a win streak? Because I want more moments like this.",
	"Are you a victory royale? Because you just won my attention.",
	"Are you a game master? Because you control the atmosphere.",
	"Are you a boss? Because you have serious presence.",
	"Are you a tutorial? Because you make everything look easy.",
	"Are you a world record? Because you're one of a kind.",
	"Are you a perfect run? Because everything about this is smooth.",
	"Are you a finish line? Because I don't want to stop here.",
	"Are you a starting line? Because this feels like a great beginning.",
	"Are you a race? Because my attention is already ahead.",
	"Are you a boost pad? Because you just raised my energy.",
	"Are you a jump pad? Because you lifted the whole mood.",
	"Are you a power core? Because you're full of energy.",
	"Are you a reactor? Because your vibe is powerful.",
	"Are you electricity? Because you just sparked something interesting.",
	"Are you neon? Because you glow without trying.",
	"Are you a laser? Because your presence cuts through the noise.",
	"Are you a hologram? Because you look unreal.",
	"Are you a signal? Because I definitely picked you up.",
	"Are you a frequency? Because we're on the same wavelength.",
	"Are you Bluetooth? Because the connection feels instant.",
	"Are you a charger? Because you bring my energy back.",
	"Are you a power button? Because you turn my mood on instantly.",
	"Are you a light switch? Because you brighten everything.",
	"Are you a flashlight? Because you stand out in the dark.",
	"Are you a spark? Because you started the whole vibe.",
	"Are you a flame? Because your energy is strong.",
	"Are you a comet? Because everyone notices when you pass by.",
	"Are you a meteor? Because you made an impact.",
	"Are you a planet? Because you have your own atmosphere.",
	"Are you a galaxy? Because there's a whole world of personality there.",
	"Are you a constellation? Because every detail connects.",
	"Are you moonlight? Because you make the night better.",
	"Are you sunrise? Because you make everything feel new.",
	"Are you a rainbow? Because you bring color to everything.",
	"Are you a diamond? Because you're rare and valuable.",
	"Are you gold? Because you're seriously worth noticing.",
	"Are you crystal? Because you catch the light perfectly.",
	"Are you a gem? Because you're one of the rare ones.",
	"Are you a treasure? Because finding you feels lucky.",
	"Are you royalty? Because you carry yourself like it.",
	"Are you iconic? Because people notice when you arrive.",
	"Are you a hero? Because you just saved the moment.",
	"Are you a superhero? Because your energy is super.",
	"Are you a special ability? Because you have serious impact.",
	"Are you a combo finisher? Because that line was too clean.",
	"Are you a perfect parry? Because your timing is flawless.",
	"Are you a clutch save? Because you rescued the vibe.",
	"Are you a speed boost? Because you just accelerated the conversation.",
	"Are you a double jump? Because you took the vibe higher.",
	"Are you a dash? Because you moved straight into my attention.",
	"Are you a revive? Because you revived the whole mood.",
	"Are you a health bar? Because you keep my energy full.",
	"Are you an XP bar? Because every moment adds something.",
	"Are you a level up? Because you just made things better.",
	"Are you a prestige? Because you're on another level.",
	"Are you a rank? Because you're definitely S-tier.",
	"Are you S-tier? Because nothing else compares.",
	"Are you an SS-rank? Because you're beyond legendary.",
	"Are you a tournament? Because everyone would want to compete for your attention.",
	"Are you a medal? Because you deserve recognition.",
	"Are you a daily login? Because you make the day better.",
	"Are you a mystery box? Because you're full of surprises.",
	"Are you a loot crate? Because you look like a rare drop.",
	"Are you a legendary chest? Because you're definitely not common.",
	"Are you a hidden achievement? Because you're worth discovering.",
	"Are you a secret ending? Because I wasn't expecting this.",
	"Are you the main character? Because everyone notices you.",
	"Are you the protagonist? Because you have the spotlight.",
	"Are you the final chapter? Because I don't want the story to end.",
	"Are you the opening scene? Because you made a strong first impression.",
	"Are you a cinematic scene? Because you look incredible.",
	"Are you a director? Because you control the whole scene.",
	"Are you a storyline? Because I want to know what happens next.",
	"Are you a book? Because there's always more to discover.",
	"Are you a chapter? Because I want to keep reading.",
	"Are you a meme? Because you instantly made me smile.",
	"Are you a viral post? Because your energy spreads fast.",
	"Are you a trend? Because everyone would want your vibe.",
	"Are you a hashtag? Because you stand out from the crowd.",
	"Are you a reply? Because I was waiting for you.",
	"Are you a chat? Because I could stay here all day.",
	"Are you a DM? Because you got my attention.",
	"Are you a mention? Because you just entered my thoughts.",
	"Are you a tag? Because you deserve to be highlighted.",
	"Are you a status? Because your vibe is worth updating.",
	"Are you a team invite? Because I'd make a great teammate.",
	"Are you a strategy? Because you work every time.",
	"Are you a new season? Because you brought fresh energy.",
	"Are you an event? Because you make things exciting.",
	"Are you a limited-time event? Because I don't want to miss you.",
	"Are you a secret code? Because you unlocked something.",
	"Are you a hidden level? Because I want to explore.",
	"Are you a secret room? Because you have mystery.",
	"Are you a portal? Because you opened a new world.",
	"Are you a dimension? Because there's always more to discover.",
	"Are you a universe? Because your vibe is huge.",
	"Are you starlight? Because you make everything glow.",
	"Are you a star cluster? Because you're surrounded by good energy.",
	"Are you a planet? Because you have your own world.",
	"Are you gravity? Because attention naturally moves toward you.",
	"Are you air? Because you keep the moment alive.",
	"Are you water? Because you keep everything flowing.",
	"Are you fire? Because your energy is strong.",
	"Are you ice? Because you froze my train of thought.",
	"Are you wind? Because you changed the atmosphere.",
	"Are you rain? Because you made everything feel fresh.",
	"Are you snow? Because you made the whole scene different.",
	"Are you sunshine? Because you brighten everything.",
	"Are you a mountain? Because your presence is huge.",
	"Are you an ocean? Because there's always more to discover.",
	"Are you a wave? Because you just changed the whole vibe.",
	"Are you a breeze? Because your energy is refreshing.",
	"Are you a flower? Because you brighten the scene.",
	"Are you a garden? Because your vibe is peaceful.",
	"Are you a butterfly? Because you bring a little magic.",
	"Are you a red neon sign? Because you stand out everywhere.",
	"Are you a boss fight? Because my confidence just leveled up.",
	"Are you an admin panel? Because you control the whole vibe.",
	"Are you a GUI? Because you make my day look better.",
	"Are you a perfect ping? Because the connection is smooth.",
	"Are you low latency? Because everything feels instant.",
	"Are you FPS boost? Because you just made the vibe smoother.",
	"Are you RTX? Because you make everything look brighter.",
	"Are you a graphics update? Because you upgraded the whole scene.",
	"Are you a texture pack? Because you changed the look completely.",
	"Are you a shader? Because you added effects to everything.",
	"Are you a lightning effect? Because you just shocked the room.",
	"Are you a red aura? Because your energy is powerful.",
	"Are you a neon glow? Because you don't need a spotlight.",
	"Are you a particle emitter? Because you bring extra energy.",
	"Are you a screen effect? Because you changed the whole atmosphere.",
	"Are you a server announcement? Because everyone should know about you.",
	"Are you a major update? Because you're a huge improvement.",
	"Are you a legendary drop? Because finding you is a W.",
	"Are you a W? Because you just won.",
	"Are you a W streak? Because MONK is not stopping.",
	"Are you a highlight clip? Because you're worth replaying.",
	"Are you a viral moment? Because everyone would remember this.",
	"Are you a legendary moment? Because this belongs in the highlights.",
	"Are you a main character? Because the scene changes when you arrive.",
	"Are you a final boss? Because you're impossible to ignore.",
	"Are you the secret ending? Because you made the story better.",
	"Are you the best update? Because MONK approves.",
	"Are you the ultimate rizz? Because you just passed the vibe check.",
}

-- Guarantee 500+ entries while keeping the generated additions harmless/original.
local baseCount = #RizzLines
if baseCount < 500 then
	local templates = {
		"MONK Rizz Check #%d: Your vibe is seriously unmatched.",
		"MONK Rizz #%d: You just upgraded the whole lobby.",
		"Rizz Level #%d: That energy is absolutely legendary.",
		"MONK Combo #%d: You just became the highlight.",
		"Rizz Alert #%d: Someone's vibe is too powerful.",
		"Vibe Check #%d: Absolutely passed.",
		"MONK Certified #%d: That's a clean W.",
		"Rizz Mode #%d: Main-character energy detected.",
	}
	for i = baseCount + 1, 500 do
		table.insert(RizzLines, string.format(templates[((i - 1) % #templates) + 1], i))
	end
end


local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = GUI_NAME
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.IgnoreGuiInset = true
ScreenGui.Parent = PlayerGui

-- IMPORTANT:
-- Roblox Studio cannot directly turn an uploaded PNG into an ImageLabel.
-- Upload the supplied 800x800 PNG to Roblox as an image/decal, then put its
-- asset id below. Example: rbxassetid://1234567890

-- Optional sound. Replace with an audio asset you own/have permission to use.
local SOUND_ASSET = "rbxassetid://101101342670886"

-- Executor clipboard compatibility.
-- Supported APIs: setclipboard / toclipboard / writeclipboard.
local function ExecutorSetClipboard(value)
    local funcs = {setclipboard, toclipboard, writeclipboard}
    for _, fn in ipairs(funcs) do
        if type(fn) == "function" then
            local ok = pcall(fn, value)
            if ok then
                return true
            end
        end
    end
    return false
end

local function make(className, props, parent)
	local obj = Instance.new(className)
	for k, v in pairs(props or {}) do
		obj[k] = v
	end
	obj.Parent = parent
	return obj
end

local function addCorner(parent, radius)
	return make("UICorner", {CornerRadius = UDim.new(0, radius)}, parent)
end

local function addStroke(parent, thickness)
	return make("UIStroke", {
		Thickness = thickness or 1,
		Transparency = 0.12,
		ApplyStrokeMode = Enum.ApplyStrokeMode.Border,
	}, parent)
end

local function addRainbowGradient(parent, rotation)
	local gradient = make("UIGradient", {
		Rotation = rotation or 0,
		Color = ColorSequence.new({
			ColorSequenceKeypoint.new(0.00, Color3.fromRGB(255, 70, 70)),
			ColorSequenceKeypoint.new(0.17, Color3.fromRGB(255, 180, 70)),
			ColorSequenceKeypoint.new(0.34, Color3.fromRGB(255, 255, 90)),
			ColorSequenceKeypoint.new(0.51, Color3.fromRGB(80, 255, 150)),
			ColorSequenceKeypoint.new(0.68, Color3.fromRGB(80, 190, 255)),
			ColorSequenceKeypoint.new(0.84, Color3.fromRGB(170, 100, 255)),
			ColorSequenceKeypoint.new(1.00, Color3.fromRGB(255, 90, 210)),
		}),
	}, parent)
	return gradient
end

local function addGlass(parent)
	parent.BackgroundTransparency = 0.16
	local glass = make("Frame", {
		Name = "CrystalGlass",
		Size = UDim2.new(1, 0, 1, 0),
		BackgroundTransparency = 0.78,
		BorderSizePixel = 0,
		ZIndex = parent.ZIndex + 1,
	}, parent)
	addCorner(glass, 18)
	local g = addRainbowGradient(glass, 25)
	g.Transparency = NumberSequence.new(0.55)
	return glass
end

-- Screen-wide visual effects removed; GUI remains unchanged.

local Main = make("Frame", {
	Name = "Main",
	Size = UDim2.new(0, 470, 0, 510),
	Position = UDim2.new(0.5, -235, 0.5, -255),
	BackgroundColor3 = Color3.fromRGB(16, 11, 24),
	BackgroundTransparency = 0.12,
	BorderSizePixel = 0,
	ZIndex = 5,
}, ScreenGui)
addCorner(Main, 22)
local MainStroke = addStroke(Main, 3)
local MainGradient = addRainbowGradient(Main, 0)

task.spawn(function()
	while Main.Parent do
		TweenService:Create(MainGradient, TweenInfo.new(2.4, Enum.EasingStyle.Linear), {Rotation = MainGradient.Rotation + 360}):Play()
		task.wait(2.4)
		MainGradient.Rotation = 0
	end
end)

local Crystal = make("Frame", {
	Name = "CrystalOverlay",
	Size = UDim2.new(1, -6, 1, -6),
	Position = UDim2.fromOffset(3, 3),
	BackgroundColor3 = Color3.fromRGB(255, 255, 255),
	BackgroundTransparency = 0.93,
	BorderSizePixel = 0,
	ZIndex = 6,
}, Main)
addCorner(Crystal, 20)

local TopBar = make("Frame", {
	Size = UDim2.new(1, 0, 0, 62),
	BackgroundColor3 = Color3.fromRGB(28, 16, 40),
	BackgroundTransparency = 0.15,
	BorderSizePixel = 0,
	ZIndex = 7,
}, Main)
addCorner(TopBar, 20)
local topGradient = addRainbowGradient(TopBar, 0)
topGradient.Transparency = NumberSequence.new(0.68)

local Logo = make("TextLabel", {
	Size = UDim2.fromOffset(42, 42),
	Position = UDim2.fromOffset(50, 10),
	BackgroundTransparency = 1,
	Text = "💀",
	Font = Enum.Font.GothamBlack,
	TextSize = 27,
	TextColor3 = Color3.new(1, 1, 1),
	TextStrokeColor3 = Color3.new(1, 1, 1),
	TextStrokeTransparency = 0.05,
	TextXAlignment = Enum.TextXAlignment.Center,
	TextYAlignment = Enum.TextYAlignment.Center,
	ZIndex = 10,
}, TopBar)

-- Rainbow glow for the 💀 logo.
local LogoGradient = addRainbowGradient(Logo, 0)
LogoGradient.Transparency = NumberSequence.new(0)

local LogoGlow = make("TextLabel", {
	Size = UDim2.new(1, 0, 1, 0),
	Position = UDim2.fromOffset(0, 0),
	BackgroundTransparency = 1,
	Text = "💀",
	Font = Enum.Font.GothamBlack,
	TextSize = 27,
	TextColor3 = Color3.new(1, 1, 1),
	TextTransparency = 0.35,
	TextStrokeColor3 = Color3.new(1, 1, 1),
	TextStrokeTransparency = 0.15,
	ZIndex = 9,
}, Logo)
local GlowGradient = addRainbowGradient(LogoGlow, 0)
GlowGradient.Transparency = NumberSequence.new(0.05)

task.spawn(function()
	while Logo.Parent do
		for _, gradient in ipairs({LogoGradient, GlowGradient}) do
			TweenService:Create(
				gradient,
				TweenInfo.new(1.5, Enum.EasingStyle.Linear),
				{Offset = Vector2.new(1, 0)}
			):Play()
		end

		TweenService:Create(
			Logo,
			TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{TextStrokeTransparency = 0.55}
		):Play()
		TweenService:Create(
			LogoGlow,
			TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{TextTransparency = 0.58}
		):Play()

		task.wait(0.75)

		TweenService:Create(
			Logo,
			TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{TextStrokeTransparency = 0.05}
		):Play()
		TweenService:Create(
			LogoGlow,
			TweenInfo.new(0.75, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut),
			{TextTransparency = 0.28}
		):Play()

		task.wait(0.75)
		LogoGradient.Offset = Vector2.new(-1, 0)
		GlowGradient.Offset = Vector2.new(-1, 0)
	end
end)

local Title = make("TextLabel", {
	Size = UDim2.new(1, -155, 1, 0),
	Position = UDim2.fromOffset(92, 0),
	BackgroundTransparency = 1,
	Text = "✨MonK RizZ BaBy🪷",
	Font = Enum.Font.GothamBlack,
	TextSize = 21,
	TextColor3 = Color3.new(1, 1, 1),
	TextXAlignment = Enum.TextXAlignment.Left,
	ZIndex = 8,
}, TopBar)

local Minimize = make("TextButton", {
	Size = UDim2.fromOffset(38, 34),
	Position = UDim2.fromOffset(10, 14),
	BackgroundColor3 = Color3.fromRGB(80, 45, 110),
	BackgroundTransparency = 0.12,
	Text = "—",
	Font = Enum.Font.GothamBold,
	TextSize = 20,
	TextColor3 = Color3.new(1, 1, 1),
	BorderSizePixel = 0,
	ZIndex = 9,
}, TopBar)
addCorner(Minimize, 10)

local Close = make("TextButton", {
	Size = UDim2.fromOffset(38, 34),
	Position = UDim2.new(1, -44, 0, 14),
	BackgroundColor3 = Color3.fromRGB(210, 55, 105),
	BackgroundTransparency = 0.08,
	Text = "×",
	Font = Enum.Font.GothamBlack,
	TextSize = 23,
	TextColor3 = Color3.new(1, 1, 1),
	BorderSizePixel = 0,
	ZIndex = 9,
}, TopBar)
addCorner(Close, 10)

local Counter = make("TextLabel", {
	Size = UDim2.new(1, -30, 0, 27),
	Position = UDim2.fromOffset(15, 73),
	BackgroundTransparency = 1,
	Text = "🌈 " .. #RizzLines .. "+ Rizz Lines Loaded",
	Font = Enum.Font.GothamBold,
	TextSize = 14,
	TextColor3 = Color3.fromRGB(255, 230, 255),
	ZIndex = 8,
}, Main)

-- The supplied image goes here once its Roblox image asset id is set above.
local RizzBox = make("Frame", {
	Name = "RizzDisplay",
	Size = UDim2.new(1, -30, 0, 175),
	Position = UDim2.fromOffset(15, 108),
	BackgroundColor3 = Color3.fromRGB(20, 13, 29),
	BackgroundTransparency = 0.20,
	BorderSizePixel = 0,
	ZIndex = 8,
}, Main)
addCorner(RizzBox, 17)
local RizzStroke = addStroke(RizzBox, 2)
local rizzGradient = addRainbowGradient(RizzBox, 25)
rizzGradient.Transparency = NumberSequence.new(0.82)

-- Rainbow 😜 emoji shown where the Rizz image was displayed.
local RizzEmoji = make("TextLabel", {
	Name = "RizzEmoji",
	Size = UDim2.fromOffset(112, 112),
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 7),
	BackgroundTransparency = 1,
	Text = "😜",
	Font = Enum.Font.GothamBlack,
	TextSize = 78,
	TextColor3 = Color3.new(1, 1, 1),
	TextStrokeColor3 = Color3.new(1, 1, 1),
	TextStrokeTransparency = 0.12,
	TextXAlignment = Enum.TextXAlignment.Center,
	TextYAlignment = Enum.TextYAlignment.Center,
	ZIndex = 9,
}, RizzBox)

local EmojiGradient = addRainbowGradient(RizzEmoji, 0)
EmojiGradient.Transparency = NumberSequence.new(0)

task.spawn(function()
	while RizzEmoji.Parent do
		TweenService:Create(
			EmojiGradient,
			TweenInfo.new(1.8, Enum.EasingStyle.Linear),
			{Offset = Vector2.new(1, 0)}
		):Play()
		task.wait(1.8)
		EmojiGradient.Offset = Vector2.new(-1, 0)
	end
end)

local RizzText = make("TextLabel", {
	Name = "RizzText",
	Size = UDim2.new(1, -24, 0, 42),
	AnchorPoint = Vector2.new(0.5, 0),
	Position = UDim2.new(0.5, 0, 0, 118),
	BackgroundTransparency = 1,
	Text = "✨ Click RANDOM RIZZ ✨",
	Font = Enum.Font.GothamMedium,
	TextSize = 16,
	TextColor3 = Color3.new(1, 1, 1),
	TextWrapped = true,
	TextXAlignment = Enum.TextXAlignment.Center,
	TextYAlignment = Enum.TextYAlignment.Center,
	ZIndex = 9,
}, RizzBox)

local RandomButton = make("TextButton", {
	Size = UDim2.new(0.31, -9, 0, 48),
	Position = UDim2.fromOffset(15, 278),
	BackgroundColor3 = Color3.fromRGB(255, 90, 180),
	BackgroundTransparency = 0.05,
	Text = "⚡ RANDOM",
	Font = Enum.Font.GothamBlack,
	TextSize = 14,
	TextColor3 = Color3.new(1, 1, 1),
	BorderSizePixel = 0,
	ZIndex = 8,
}, Main)
addCorner(RandomButton, 13)
addRainbowGradient(RandomButton, 0)

local NextButton = make("TextButton", {
	Size = UDim2.new(0.31, -9, 0, 48),
	Position = UDim2.new(0.34, 0, 0, 278),
	BackgroundColor3 = Color3.fromRGB(110, 75, 220),
	BackgroundTransparency = 0.08,
	Text = "➡ NEXT",
	Font = Enum.Font.GothamBlack,
	TextSize = 14,
	TextColor3 = Color3.new(1, 1, 1),
	BorderSizePixel = 0,
	ZIndex = 8,
}, Main)
addCorner(NextButton, 13)

local CopyButton = make("TextButton", {
	Size = UDim2.new(0.31, -9, 0, 48),
	Position = UDim2.new(0.67, 0, 0, 278),
	BackgroundColor3 = Color3.fromRGB(75, 180, 255),
	BackgroundTransparency = 0.08,
	Text = "📋 COPY",
	Font = Enum.Font.GothamBlack,
	TextSize = 14,
	TextColor3 = Color3.new(1, 1, 1),
	BorderSizePixel = 0,
	ZIndex = 8,
}, Main)
addCorner(CopyButton, 13)

local SendButton = make("TextButton", {
	Size = UDim2.new(1, -30, 0, 48),
	Position = UDim2.fromOffset(15, 338),
	BackgroundColor3 = Color3.fromRGB(100, 225, 160),
	BackgroundTransparency = 0.06,
	Text = "💬 SEND RIZZ TO CHAT",
	Font = Enum.Font.GothamBlack,
	TextSize = 14,
	TextColor3 = Color3.fromRGB(15, 25, 20),
	BorderSizePixel = 0,
	ZIndex = 8,
}, Main)
addCorner(SendButton, 13)

local Status = make("TextLabel", {
	Size = UDim2.new(1, -30, 0, 40),
	Position = UDim2.fromOffset(15, 394),
	BackgroundTransparency = 1,
	Text = "✨ MONK RizZ YaY • Ready",
	Font = Enum.Font.Gotham,
	TextSize = 13,
	TextColor3 = Color3.fromRGB(245, 220, 255),
	TextWrapped = true,
	ZIndex = 8,
}, Main)

local Hint = make("TextLabel", {
	Size = UDim2.new(1, -30, 0, 25),
	Position = UDim2.fromOffset(15, 463),
	BackgroundTransparency = 1,
	Text = "🪷 Cute • Crystal • Rainbow • Optimized",
	Font = Enum.Font.GothamMedium,
	TextSize = 11,
	TextColor3 = Color3.fromRGB(210, 190, 230),
	ZIndex = 8,
}, Main)

local OpenButton = make("TextButton", {
	Size = UDim2.fromOffset(58, 58),
	Position = UDim2.new(0, 20, 0.5, -29),
	BackgroundColor3 = Color3.fromRGB(255, 90, 180),
	Text = "✨",
	Font = Enum.Font.GothamBlack,
	TextSize = 27,
	TextColor3 = Color3.new(1, 1, 1),
	Visible = false,
	BorderSizePixel = 0,
	ZIndex = 20,
}, ScreenGui)
addCorner(OpenButton, 29)
addStroke(OpenButton, 2)
addRainbowGradient(OpenButton, 0)

-- Custom notification system
local NotificationLayer = make("Frame", {
	Name = "Notifications",
	Size = UDim2.new(1, 0, 1, 0),
	BackgroundTransparency = 1,
	BorderSizePixel = 0,
	ZIndex = 100,
}, ScreenGui)

local function notify(message, duration)
	local card = make("Frame", {
		Size = UDim2.new(0, 350, 0, 72),
		Position = UDim2.new(1, 20, 0, 24),
		BackgroundColor3 = Color3.fromRGB(25, 17, 35),
		BackgroundTransparency = 0.08,
		BorderSizePixel = 0,
		ZIndex = 101,
	}, NotificationLayer)
	addCorner(card, 16)
	local stroke = addStroke(card, 2)
	addRainbowGradient(card, 0)
	local label = make("TextLabel", {
		Size = UDim2.new(1, -24, 1, -14),
		Position = UDim2.fromOffset(12, 7),
		BackgroundTransparency = 1,
		Text = message,
		Font = Enum.Font.GothamBold,
		TextSize = 13,
		TextColor3 = Color3.new(1, 1, 1),
		TextWrapped = true,
		TextXAlignment = Enum.TextXAlignment.Center,
		TextYAlignment = Enum.TextYAlignment.Center,
		ZIndex = 102,
	}, card)

	TweenService:Create(card, TweenInfo.new(0.28, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
		Position = UDim2.new(1, -370, 0, 24)
	}):Play()

	task.delay(duration or 3, function()
		if card.Parent then
			TweenService:Create(card, TweenInfo.new(0.22, Enum.EasingStyle.Quad, Enum.EasingDirection.In), {
				Position = UDim2.new(1, 20, 0, 24),
				BackgroundTransparency = 1,
			}):Play()
			task.wait(0.25)
			card:Destroy()
		end
	end)
end

local function playSound()
	if SOUND_ASSET == "" then return end
	local s = Instance.new("Sound")
	s.SoundId = SOUND_ASSET
	s.Volume = 0.45
	s.Parent = SoundService
	s:Play()
	s.Ended:Connect(function() s:Destroy() end)
	task.delay(4, function()
		if s.Parent then s:Destroy() end
	end)
end

-- Touch/click feedback
local function touchEffect(button)
	local original = button.Size
	button.Activated:Connect(function()
		playSound()
		TweenService:Create(button, TweenInfo.new(0.07, Enum.EasingStyle.Quad, Enum.EasingDirection.Out), {
			Size = UDim2.new(original.X.Scale, original.X.Offset - 6, original.Y.Scale, original.Y.Offset - 4)
		}):Play()
		task.delay(0.08, function()
			if button.Parent then
				TweenService:Create(button, TweenInfo.new(0.12, Enum.EasingStyle.Back, Enum.EasingDirection.Out), {
					Size = original
				}):Play()
			end
		end)
	end)
end

for _, button in ipairs({RandomButton, NextButton, CopyButton, SendButton, Minimize, Close, OpenButton}) do
	touchEffect(button)
end

local function Hover(button, normal, hover)
	button.MouseEnter:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.12), {BackgroundColor3 = hover}):Play()
	end)
	button.MouseLeave:Connect(function()
		TweenService:Create(button, TweenInfo.new(0.12), {BackgroundColor3 = normal}):Play()
	end)
end

Hover(RandomButton, Color3.fromRGB(255, 90, 180), Color3.fromRGB(255, 150, 220))
Hover(NextButton, Color3.fromRGB(110, 75, 220), Color3.fromRGB(155, 120, 255))
Hover(CopyButton, Color3.fromRGB(75, 180, 255), Color3.fromRGB(125, 215, 255))
Hover(SendButton, Color3.fromRGB(100, 225, 160), Color3.fromRGB(145, 255, 195))
Hover(Minimize, Color3.fromRGB(80, 45, 110), Color3.fromRGB(120, 75, 160))
Hover(Close, Color3.fromRGB(210, 55, 105), Color3.fromRGB(255, 90, 145))

local LastIndex = 0
local function ShowRandomRizz()
	local index
	repeat
		index = math.random(1, #RizzLines)
	until index ~= LastIndex or #RizzLines == 1
	LastIndex = index
	RizzText.Text = "✨ " .. RizzLines[index]
	Status.Text = "🔥 Rizz #" .. index .. " • MONK Approved"
end

local function getCurrentRizz()
	local value = RizzText.Text
	value = value:gsub("^✨%s*", "")
	return value
end

RandomButton.Activated:Connect(ShowRandomRizz)
NextButton.Activated:Connect(ShowRandomRizz)

CopyButton.Activated:Connect(function()
	local rizz = getCurrentRizz()
	local copied = false

	-- Use an executor clipboard API when the environment provides one.
	copied = ExecutorSetClipboard(rizz)

	if copied then
		Status.Text = "📋 Copied Rizz to clipboard!"
		notify("📋 Rizz copied!", 2)
	else
		Status.Text = "📋 Clipboard API unavailable in Roblox Studio"
		notify("📋 Copy needs a supported clipboard API", 3)
	end
end)

local function SendChatMessage(message)
	local success, err = pcall(function()
		local channels = TextChatService:WaitForChild("TextChannels", 5)
		if not channels then error("TextChannels not found") end
		local general = channels:FindFirstChild("RBXGeneral")
		if not general then error("RBXGeneral not found") end
		general:SendAsync(message)
	end)
	return success, err
end

SendButton.Activated:Connect(function()
	local rizz = getCurrentRizz()
	if rizz == "" or rizz == "Click RANDOM RIZZ ✨" then
		ShowRandomRizz()
		rizz = getCurrentRizz()
	end

	local sent, err = SendChatMessage(rizz)
	if sent then
		Status.Text = "💬 Rizz sent to chat!"
		notify("💬 Rizz sent!", 2)
	else
		Status.Text = "⚠️ Chat send failed"
		notify("⚠️ Chat unavailable: " .. tostring(err), 3)
	end
end)

-- Smooth drag support for mouse + touch from ANY part of the GUI.
-- The target position follows the pointer immediately, while Main smoothly
-- interpolates toward it for a softer drag feel.
local RunService = game:GetService("RunService")

local dragging = false
local dragStart
local startPos
local targetPosition = Main.Position
local dragInput

local function setDragTarget(input)
	local delta = input.Position - dragStart
	targetPosition = UDim2.new(
		startPos.X.Scale, startPos.X.Offset + delta.X,
		startPos.Y.Scale, startPos.Y.Offset + delta.Y
	)
end

local function beginDrag(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1
		or input.UserInputType == Enum.UserInputType.Touch then
		dragging = true
		dragStart = input.Position
		startPos = Main.Position
		targetPosition = Main.Position

		if input.UserInputType == Enum.UserInputType.Touch then
			dragInput = input
		end

		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragging = false
				dragInput = nil
			end
		end)
	end
end

Main.InputBegan:Connect(beginDrag)

Main.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement
		or input.UserInputType == Enum.UserInputType.Touch then
		dragInput = input
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if dragging and input == dragInput then
		setDragTarget(input)
	end
end)

RunService.RenderStepped:Connect(function()
	if not Main.Parent then return end

	local current = Main.Position
	local lerpAmount = 0.22

	local x = current.X.Offset + (targetPosition.X.Offset - current.X.Offset) * lerpAmount
	local y = current.Y.Offset + (targetPosition.Y.Offset - current.Y.Offset) * lerpAmount

	Main.Position = UDim2.new(
		targetPosition.X.Scale, x,
		targetPosition.Y.Scale, y
	)
end)

Minimize.Activated:Connect(function()
	Main.Visible = false
	OpenButton.Visible = true
	notify("✨ MONK minimized", 2)
end)

OpenButton.Activated:Connect(function()
	Main.Visible = true
	OpenButton.Visible = false
end)

-- Two-step close confirmation
local closing = false
local function askCloseAgain()
	if closing then return end
	closing = true

	local card = make("Frame", {
		Size = UDim2.new(0, 360, 0, 150),
		Position = UDim2.new(0.5, -180, 0.5, -75),
		BackgroundColor3 = Color3.fromRGB(25, 16, 35),
		BackgroundTransparency = 0.05,
		BorderSizePixel = 0,
		ZIndex = 200,
	}, NotificationLayer)
	addCorner(card, 18)
	addStroke(card, 2)
	addRainbowGradient(card, 0)

	make("TextLabel", {
		Size = UDim2.new(1, -20, 0, 60),
		Position = UDim2.fromOffset(10, 10),
		BackgroundTransparency = 1,
		Text = "🪷 Really Do You Want to Quit?",
		Font = Enum.Font.GothamBlack,
		TextSize = 18,
		TextColor3 = Color3.new(1, 1, 1),
		TextWrapped = true,
		ZIndex = 201,
	}, card)

	local yes = make("TextButton", {
		Size = UDim2.new(0.43, -8, 0, 42),
		Position = UDim2.new(0, 15, 1, -55),
		BackgroundColor3 = Color3.fromRGB(255, 80, 130),
		Text = "YES",
		Font = Enum.Font.GothamBlack,
		TextSize = 14,
		TextColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 201,
	}, card)
	addCorner(yes, 11)

	local no = make("TextButton", {
		Size = UDim2.new(0.43, -8, 0, 42),
		Position = UDim2.new(0.57, -7, 1, -55),
		BackgroundColor3 = Color3.fromRGB(90, 70, 150),
		Text = "NO",
		Font = Enum.Font.GothamBlack,
		TextSize = 14,
		TextColor3 = Color3.new(1, 1, 1),
		BorderSizePixel = 0,
		ZIndex = 201,
	}, card)
	addCorner(no, 11)

	touchEffect(yes)
	touchEffect(no)

	yes.Activated:Connect(function()
		card:Destroy()
		closing = false

		-- Second confirmation uses the same custom notification style.
		local second = make("Frame", {
			Size = UDim2.new(0, 360, 0, 150),
			Position = UDim2.new(0.5, -180, 0.5, -75),
			BackgroundColor3 = Color3.fromRGB(25, 16, 35),
			BackgroundTransparency = 0.05,
			BorderSizePixel = 0,
			ZIndex = 210,
		}, NotificationLayer)
		addCorner(second, 18)
		addStroke(second, 2)
		addRainbowGradient(second, 0)

		make("TextLabel", {
			Size = UDim2.new(1, -20, 0, 60),
			Position = UDim2.fromOffset(10, 10),
			BackgroundTransparency = 1,
			Text = "⚠️ Do You Really Want to Close?",
			Font = Enum.Font.GothamBlack,
			TextSize = 17,
			TextColor3 = Color3.new(1, 1, 1),
			TextWrapped = true,
			ZIndex = 211,
		}, second)

		local quit = make("TextButton", {
			Size = UDim2.new(0.43, -8, 0, 42),
			Position = UDim2.new(0, 15, 1, -55),
			BackgroundColor3 = Color3.fromRGB(255, 75, 115),
			Text = "YES, QUIT",
			Font = Enum.Font.GothamBlack,
			TextSize = 13,
			TextColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			ZIndex = 211,
		}, second)
		addCorner(quit, 11)

		local stay = make("TextButton", {
			Size = UDim2.new(0.43, -8, 0, 42),
			Position = UDim2.new(0.57, -7, 1, -55),
			BackgroundColor3 = Color3.fromRGB(90, 70, 150),
			Text = "NO, STAY",
			Font = Enum.Font.GothamBlack,
			TextSize = 13,
			TextColor3 = Color3.new(1, 1, 1),
			BorderSizePixel = 0,
			ZIndex = 211,
		}, second)
		addCorner(stay, 11)

		touchEffect(quit)
		touchEffect(stay)

		quit.Activated:Connect(function()
			ScreenGui:Destroy()
		end)

		stay.Activated:Connect(function()
			second:Destroy()
			notify("🪷 Okay! MONK RizZ stays open.", 2)
		end)
	end)

	no.Activated:Connect(function()
		card:Destroy()
		closing = false
		notify("🪷 Close cancelled.", 2)
	end)
end

Close.Activated:Connect(askCloseAgain)

ShowRandomRizz()

task.delay(0.5, function()
	notify("Hey " .. Player.Name .. "! ✨ This Script is By SuPerMonK YaY 🪷", 4)
end)

task.spawn(function()
	while ScreenGui.Parent do
		TweenService:Create(MainStroke, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Thickness = 5,
			Transparency = 0,
		}):Play()
		task.wait(0.8)
		TweenService:Create(MainStroke, TweenInfo.new(0.8, Enum.EasingStyle.Sine, Enum.EasingDirection.InOut), {
			Thickness = 2,
			Transparency = 0.18,
		}):Play()
		task.wait(0.8)
	end
end)

local clipboardAvailable =
    type(setclipboard) == "function"
    or type(toclipboard) == "function"
    or type(writeclipboard) == "function"

print("✨MonK RizZ BaBy🪷 loaded with " .. #RizzLines .. "+ Rizz Lines!")
print("[MONK] Clipboard API: " .. (clipboardAvailable and "available" or "not available"))
