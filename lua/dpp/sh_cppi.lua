
--CPPI

CPPI_NOTIMPLEMENTED = 9020
CPPI_DEFER = 9030

CPPI = {}

function CPPI.GetName()
	return 'DBots Prop Protection'
end

function CPPI.GetVersion()
	return 'Universal'
end

function CPPI.GetInterfaceVersion()
	return 1.3, 'modified'
end

local entMeta = FindMetaTable('Entity')
local plyMeta = FindMetaTable('Entity')

function plyMeta:CPPIGetFriends()
	if CLIENT and self ~= LocalPlayer() then
		return CPPI_NOTIMPLEMENTED
	end
	
	if CLIENT then
		return DPP.FriendsCPPI
	else
		return DPP.GetFriendTableCPPI(self)
	end
end

function entMeta:CPPIGetOwner()
	local o = DPP.GetOwner(self)
	if not IsValid(o) then return nil, nil end
	
	return o, o:UniqueID()
end

if SERVER then
	function entMeta:CPPISetOwner(ply)
		DPP.SetOwner(self, ply)
	end
	
	function entMeta:CPPISetOwnerUID(uid)
		local ply = player.GetByUniqueID(uid)
		if not ply then
			DPP.SetOwner(self, NULL)
		else
			DPP.SetOwner(self, ply)
		end
	end
end

function entMeta:CPPICanDamage(ply)
	return DPP.CanDamage(ply, self)
end

function entMeta:CPPICanTool(ply, mode)
	return DPP.CanTool(ply, self, mode)
end

function entMeta:CPPIDrive(ply)
	return DPP.CanDrive(ply, self)
end

function entMeta:CPPICanEditVariable(ply, key, val, editor)
	return DPP.CanEditVariable(self, ply, key, val, editor)
end

function entMeta:CPPICanProperty(ply, str)
	return DPP.CanProperty(ply, str, ent)
end

function entMeta:CPPICanPhysgun(ply)
	return DPP.CanPhysgun(ply, self)
end

function entMeta:CPPICanPickup(ply)
	return DPP.CanGravgun(ply, self)
end

function entMeta:CPPICanPunt(ply)
	return DPP.CanGravgunPunt(ply, self)
end

function entMeta:CPPICanUse(ply)
	return DPP.PlayerUse(ply, self)
end

function entMeta:CPPIIsOwned()
	return DPP.IsOwned(self)
end
