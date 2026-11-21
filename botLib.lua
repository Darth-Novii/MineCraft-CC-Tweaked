--This file contains all the Functions I've written for turtles.

--Navigation Start



--Navigation End

--Block Actions Start

function safeMineForward()

	local canDig, errorMessage = turtle.dig()
	if not canDig then
		if errorMessage == "Cannot break unbreakable block" then
			return false
		end
	end
	return true
end

function safeMineDown()

	local canDig, errorMessage = turtle.digDown()
	if not canDig then
		if errorMessage == "Cannot break unbreakable block" then
			return false
		end
	end
	return true
end

function safeMineUp()

	local canDig, errorMessage = turtle.digUp()
	if not canDig then
		if errorMessage == "Cannot break unbreakable block" then
			return false
		end
	end
	return true
end

--Block Actions End

--Inventory Start

function emptySlotsCheck(first,last)

--Takes two numbers read as the first inventory slot to check, and the last inventory slot to check. Accepts only the values 1-16. If any of the checked inventory slots are empty, this function returns true. If all checked inventory slots contain at least one item, this function returns false.

	

	slotsRemaining = false
	for slot = first, last do
		if turtle.getItemCount(slot) == 0 then
			slotsRemaining = true
		end
	end
	if not inventoryGood then 
		if not depot() then return false end
	end
	
	return true

end

--Inventory End