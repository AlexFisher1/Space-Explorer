  
--Planet Class
local Planet = {} -- table representing class planet
Planet.__index = Planet --failed table lookups should fall back to class table to get methods 
	
function Planet.new(atmos, out_mat, in_mat, toxicity, age, colours, habitation, level, image, P_ID, sys_ID, ss_image)
	local self = setmetatable({}, Planet)
  self.atmos = atmos
  self.out_mat = out_mat
  self.in_mat = in_mat
  self.toxicity = toxicity
  self.age = age
  self.colours = colours
  self.habitation = habitation
  self.level = level
  self.image = image
  return self
end

function createETP(PBase, Mass1, Mass2, Mass3, Mass4, Mass5, Mass6)

-- create new group

    --local newETP = display.newGroup()

--load PBase corresponding to selected ss planet icon

  local planetBase = {"images/ETP/Pbase_1.png"}
    local PBase = planetBase[math.random(1)]

    -- PBase.x = contentCenterX; PBase.y = contentCenterY
    --newETP:insert( PBase )

-- create and insert all Mass and PBase into group

  local Mass1 = {"images/ETP/Mass1_1.png", "images/ETP/Mass1_2.png"}
    

    local M1 = Mass1[math.random(2)]
    --M1.x = contentCenterX; M1.y = contentCenterY
    --newETP:insert( M1 )
  
  local Mass2 = {"images/ETP/Mass2_1.png", "images/ETP/Mass2_2.png"}

    local M2 = Mass2[math.random(2)]
    --M2.x = contentCenterX; M2.y = contentCenterY
    --newETP:insert( M2 )
  
  local Mass3 = {"images/ETP/Mass3_1.png", "images/ETP/Mass3_2.png"}

    local M3 = Mass3[math.random(2)]
    --M3.x = contentCenterX; M3.y = contentCenterY
    --newETP:insert( M3 )
  
  local Mass4 = {"images/ETP/Mass4_1.png", "images/ETP/Mass4_2.png"}

    
    local M4 = Mass4[math.random(2)]
    --M4.x = contentCenterX; M4.y = contentCenterY
    --newETP:insert( M4 )
  
  local Mass5 = {"images/ETP/Mass5_1.png", "images/ETP/Mass5_2.png"}

    
    local M5 = Mass5[math.random(2)]
    --M5.x = contentCenterX; M5.y = contentCenterY
    --newETP:insert( M5 )
  
  local Mass6 = {"images/ETP/Mass6_1.png", "images/ETP/Mass6_2.png"}
    
    local M6 = Mass6[math.random(2)]
    --M6.x = contentCenterX; M6.y = contentCenterY
    --newETP:insert( M6 )

    local t = {PBase, M1, M2, M3, M4, M5, M6}
    return t


end    
 


function loadETP(t)
    local newETP = display.newGroup()
    PBase.x = contentCenterX; PBase.y = contentCenterY
    newETP:insert( PBase )
    M1.x = display.contentCenterX; M1.y = display.contentCenterY
    newETP:insert( M1 )
    M2.x = display.contentCenterX; M2.y = display.contentCenterY
    newETP:insert( M2 )
    M3.x = display.contentCenterX; M3.y = display.contentCenterY
    newETP:insert( M3 )
    M4.x = display.contentCenterX; M4.y = display.contentCenterY
    newETP:insert( M4 )
    M5.x = display.contentCenterX; M5.y = display.contentCenterY
    newETP:insert( M5 )
    M6.x = display.contentCenterX; M6.y = display.contentCenterY
    newETP:insert( M6 )

end



function Planet.set_atmos(self, val)
	self.atmos = val
end

function Planet.get_atmos(self)
	return self.atmos
end

function Planet.set_out_mat(self, out_mat)
	self.out_mat = out_mat
end

function Planet.get_out_mat(self)
	return self.out_mat
end

function Planet.set_in_mat(self, in_mat)
	self.in_mat = in_mat
end

function Planet.get_in_mat(self)
	return self.in_mat
end

function Planet.set_toxicity(self, toxicity)
	self.toxicity = toxicity
end

function Planet.get_toxicity(self)
	return self.toxicity
end

function Planet.set_age(self, age)
	self.age = age
end

function Planet.get_age(self)
	return self.age
end

function Planet.set_colours(self, colours)
	self.atmos = colours
end

function Planet.get_colours(self)
	return self.colours
end

function Planet.set_habitation(self, habitation)
	self.habitation = habitation
end

function Planet.get_habitation(self)
	return self.habitation
end

function Planet.set_level(self, level)
	self.level = level
end

function Planet.get_level(self)
	return self.level
end

function Planet.set_image(self, image)
	self.image = image
end

function Planet.get_image(self)
	return self.image
end

function Planet.set_planetID(self, sys_ID)
	self.P_ID = P_ID
end

function Planet.get_planetID(self)
	return self.P_ID
end


function Planet.set_sysID(self, sys_ID)
	self.sys_ID = sys_ID
end

function Planet.get_sysID(self)
	return self.sys_ID
end

function Planet.set_ssimage(self, ss_image)
	self.ss_image = ss_image
end

function Planet.get_ssimage(self)
	return self.ss_image
end
