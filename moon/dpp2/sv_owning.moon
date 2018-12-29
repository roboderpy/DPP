
-- Copyright (C) 2015-2018 DBot

-- Permission is hereby granted, free of charge, to any person obtaining a copy
-- of this software and associated documentation files (the "Software"), to deal
-- in the Software without restriction, including without limitation the rights
-- to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies
-- of the Software, and to permit persons to whom the Software is furnished to do so,
-- subject to the following conditions:

-- The above copyright notice and this permission notice shall be included in all copies
-- or substantial portions of the Software.

-- THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED,
-- INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR
-- PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE
-- FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR
-- OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
-- DEALINGS IN THE SOFTWARE.

import NULL, type, player from _G

entMeta = FindMetaTable('Entity')

entMeta.DPP2GetOwner = =>
	if @GetNWString('dpp2_owner_steamid', '-1') == '-1'
		return NULL, 'world', 'World'
	else
		return @GetNWEntity('dpp2_ownerent', NULL), @GetNWString('dpp2_owner_steamid'), @_dpp2_last_nick

entMeta.DPP2SetOwner = (newOwner = NULL) =>
	return @ if type(@) == 'Player'

	switch type(newOwner)
		when 'number'
			newOwner = player.GetByUniqueID(newOwner)
			newOwner = NULL if not newOwner
		when 'string'
			newOwner = player.GetBySteamID(newOwner)
			newOwner = player.GetBySteamID64(newOwner) if not newOwner
			newOwner = NULL if not newOwner
		else
			error('Invalid owner provided: ' .. type(newOwner)) if type(newOwner) ~= 'Player' and newOwner ~= NULL

	return if newOwner == @GetNWEntity('dpp2_ownerent', NULL)

	if newOwner == NULL
		@SetNWEntity('dpp2_ownerent', nil)
		@SetNWString('dpp2_owner_name', nil)
		@SetNWString('dpp2_owner_steamid', nil)
		@_dpp2_last_nick = nil
	else
		@SetNWEntity('dpp2_ownerent', newOwner)
		@SetNWString('dpp2_owner_name', newOwner\Nick())
		@SetNWString('dpp2_owner_steamid', newOwner\SteamID())
		@_dpp2_last_nick = newOwner\Nick()
		@_dpp2_last_nick = @_dpp2_last_nick .. ' (' .. newOwner\SteamName() .. ')' if newOwner.SteamName and newOwner\SteamName() ~= newOwner\Nick()

	@DPP2InvalidateContraption()

	return @

