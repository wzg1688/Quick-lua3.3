
-- 0 - disable debug info, 1 - less debug info, 2 - verbose debug info
DEBUG = 1

-- display FPS stats on screen
DEBUG_FPS = true

-- dump memory info every 10 seconds
DEBUG_MEM = false

-- load deprecated API
LOAD_DEPRECATED_API = false

-- load shortcodes API
LOAD_SHORTCODES_API = true

-- screen orientation
CONFIG_SCREEN_ORIENTATION = "landscape"

-- check device screen size
local sharedDirector         = cc.Director:getInstance()
local glview = sharedDirector:getOpenGLView()
local size = glview:getFrameSize()

local sharedApplication = cc.Application:getInstance()
local target = sharedApplication:getTargetPlatform()
   
-- print(target .. " , width => " .. tostring(size.width) .. " , height =>  " .. tostring(size.height) )

if size.width == 1024 and size.height == 768 or size.width == 2048 and size.height == 1536 then
	-- design resolution
	CONFIG_SCREEN_WIDTH  = 1024
	CONFIG_SCREEN_HEIGHT = 768
else
	-- design resolution
	CONFIG_SCREEN_WIDTH  = 960
	CONFIG_SCREEN_HEIGHT = 640
end

-- print("screen width => " .. size.width .. " , height => " .. size.height)

-- auto scale mode
CONFIG_SCREEN_AUTOSCALE = "FIXED_HEIGHT"

if target == "ipad" or target == "iphone" then
 	FONT_NAME = "fonts/FZCuYuan-M03S.ttf"
else
 	FONT_NAME = "fonts/FZCuYuan-M03S.ttf"
end














