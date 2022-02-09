-- First MPV script
-- Assumes 1080p screen

local function lila()
	mp.set_property("video-align-y",-1)						-- Push video to top of screen
	mp.set_property("sub-margin-y",0)						-- Push subtitles to the very bottom of screen
	blackbox = mp.get_property("osd-dimensions/mb") 				-- Get height of black box under video
	if math.floor(blackbox/3) <= 40 then 						
		mp.set_property("sub-font-size",math.floor(blackbox*4/12))		-- Small but big enough for double lines
		if math.floor(blackbox/3) <= 20 then
	 		mp.set_property("sub-font-size",math.floor(blackbox*8/12)) 	-- So small it needs a single line
		end
	elseif math.floor(blackbox/3) > 120 then					-- For when screen is halved
		Y = math.min(math.floor(blackbox*99/100),580)				-- If margin bigger than 1080/2, it gives 0 and bottoms
		mp.set_property("sub-margin-y",Y)
		Z = math.min(math.floor(blackbox/10),55) --default size of 55px @ 720p?	-- Maximum size of subtitles to guarantee width
		mp.set_property("sub-font-size",Z) --60)
	else
		mp.set_property("sub-font-size",math.floor(blackbox/3))			-- A third of blackbox seems to work best
	end
end
											-- I use fullscreen at startup setting to cause this
mp.observe_property("osd-dimensions/mb","number",lila)					-- Functions at change of blackbox height
