local junk = math.random(0,1)
local horizontalMoment = math.random(0,1)
local verticalMoment = math.random(0,1)

function onCreate()
	setProperty('dad.x', 275)
	setProperty('dad.y', 90)

end

function onUpdate(elapsed)
	fuck = getProperty('dad.x')
	frick = getProperty('dad.y')

	if horizontalMoment == 0 then
		setProperty('dad.x', fuck - 80 * elapsed)
		if fuck <= 135 then
			horizontalMoment = 1
		end
	end

	if horizontalMoment == 1 then
		setProperty('dad.x', fuck + 80 * elapsed)
		if fuck >= 325 then
			horizontalMoment = 0
		end
	end

	if verticalMoment == 0 then
		setProperty('dad.y', frick - 150 * elapsed)
		if frick <= 50 then
			verticalMoment = 1
		end
	end

	if verticalMoment == 1 then
		setProperty('dad.y', frick + 150 * elapsed)
		if frick >= 150 then
			verticalMoment = 0
		end
	end
end