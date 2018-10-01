-- === deinfe option hotkey ===
hs.window.animationDuration = 0
local cmd = 'cmd'
local cmdAlt = {'cmd', 'alt'}
local cmdShift = {'cmd', 'shift'}
local altShift = {'shift', 'alt'}
local cmdAltShift = {'cmd', 'alt', 'shift'}

-- GOD LIKE
hs.hotkey.bind(cmd, 'H', function()end)
hs.hotkey.bind(cmd, 'E', hs.hints.windowHints)

-- 看看这是不是双屏用的
-- hs.hotkey.bind(cmdAlt, 'H', function() spoon.WinWin:moveToScreen('left') end)
-- hs.hotkey.bind(cmdAlt, 'L', function() spoon.WinWin:moveToScreen('right') end)


-- === Plugin Loading ===
hs.loadSpoon("ReloadConfiguration")
hs.loadSpoon("WinWin")

-- === Plugin hotkeys ===
hs.hotkey.bind(cmdShift, 'H', function() spoon.WinWin:moveAndResize('halfleft') end)
hs.hotkey.bind(cmdShift, 'L', function() spoon.WinWin:moveAndResize('halfright') end)
hs.hotkey.bind(cmdShift, 'J', function() spoon.WinWin:moveAndResize('halfdown') end)
hs.hotkey.bind(cmdShift, 'K', function() spoon.WinWin:moveAndResize('halfup') end)

hs.hotkey.bind(cmdShift, 'R', function() spoon.WinWin:undo() end)
hs.hotkey.bind(cmdShift, 'C', function() spoon.WinWin:moveAndResize('center') end)
hs.hotkey.bind(cmdShift, 'Z', function() spoon.WinWin:moveAndResize('shrink') end)
hs.hotkey.bind(cmdShift, 'M', function() spoon.WinWin:moveAndResize('expand') end)

hs.hotkey.bind(cmdShift, 'Y', function() spoon.WinWin:moveAndResize('cornerNW') end)
hs.hotkey.bind(cmdShift, 'U', function() spoon.WinWin:moveAndResize('cornerNE') end)
hs.hotkey.bind(cmdShift, 'B', function() spoon.WinWin:moveAndResize('cornerSW') end)
hs.hotkey.bind(cmdShift, 'N', function() spoon.WinWin:moveAndResize('cornerSE') end)

hs.hotkey.bind(cmdShift, 'P', function() spoon.WinWin:moveAndResize('fullscreen') end)

-- === Plugin Methods === 
spoon.ReloadConfiguration:start()

-- === Welcome ! ===
hs.alert.show('Happy Hammerspoon! ', 1)
