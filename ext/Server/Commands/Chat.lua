---@class ChatCommands
---@overload fun():ChatCommands
ChatCommands = class('ChatCommands')

require('__shared/Config')
require('__shared/Utilities')
local m_NodeCollection = require('NodeCollection')

local m_Debug = require('Debug/BugReport')

local m_CarParts

function ChatCommands:Execute(p_Parts, p_Player)
	if p_Player == nil or Config.DisableChatCommands == true then
		return
	end

	if p_Parts[1] == '!permissions' then
		local s_Permissions = PermissionManager:GetPermissions(p_Player)

		if s_Permissions == nil then
			ChatManager:SendMessage('You have no active permissions (GUID: ' .. tostring(p_Player.guid) .. ').', p_Player)
		else
			ChatManager:SendMessage('You have following permissions (GUID: ' .. tostring(p_Player.guid) .. '):', p_Player)
			ChatManager:SendMessage(table.concat(s_Permissions, ', '), p_Player)
		end
	elseif p_Parts[1] == '!weap' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.KickAll).', p_Player)
			return
		end

		-- testing with extracting of weapon-information for gunmaster
		local s_weapon = SoldierWeapon(p_Player.soldier.weaponsComponent.currentWeapon)
		print(s_weapon.name)
		print(p_Player.soldier.weaponsComponent.weapons[1].name)
		local s_name = s_weapon.name
		local s_unlock_path_parts = s_name:split('/')
		local s_name_of_weapon = s_unlock_path_parts[#s_unlock_path_parts]
		s_unlock_path_parts[#s_unlock_path_parts] = "U_" .. s_unlock_path_parts[#s_unlock_path_parts]
		local s_unlock_path = ""
		for i = 1, #s_unlock_path_parts do
			s_unlock_path = s_unlock_path .. s_unlock_path_parts[i]
			if i < #s_unlock_path_parts then
				s_unlock_path = s_unlock_path .. "/"
			end
		end
		print(s_unlock_path)
		local s_weapon = Weapon(s_name_of_weapon, '', {}, WeaponTypes.None, s_unlock_path)
		s_weapon:learnStatsValues()
		print(s_weapon.bulletDrop)
		print(s_weapon.bulletSpeed)
		print(s_weapon.damage)
	elseif p_Parts[1] == '!car' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands).', p_Player)
			return
		end

		m_CarParts = {}

		if p_Player.attachedControllable ~= nil then
			local s_VehicleName = VehicleEntityData(p_Player.controlledControllable.data).controllableType:gsub(".+/.+/", "")
			local s_Pos = p_Player.controlledControllable.transform.forward
			local s_PlayerPos = p_Player.soldier.worldTransform.trans
			print("-----------------------------")
			print(s_VehicleName)
			local s_VehicleEntity
			print(s_PlayerPos)

			-- Vehicle found.
			print(p_Player.controlledControllable.physicsEntityBase.partCount)
			s_VehicleEntity = p_Player.controlledControllable.physicsEntityBase

			if Registry.DEBUG.VEHICLE_PROJECTILE_TRACE and Globals.LastPorjectile ~= nil then
				print("Offset of vehicle to bullet:")
				local s_Diff = Globals.LastPorjectile.trans - p_Player.controlledControllable.transform.trans

				local s_Left = Globals.LastPorjectile.left
				local s_FactLeft = s_Diff:Dot(s_Left) / s_Left:Dot(s_Left)
				print("x: " .. string.format("%.3f", s_FactLeft))

				local s_Up = Globals.LastPorjectile.up
				local s_FactUp = s_Diff:Dot(s_Up) / s_Up:Dot(s_Up)
				print("y: " .. string.format("%.3f", s_FactUp))

				local s_Forward = Globals.LastPorjectile.forward
				local s_FactForward = s_Diff:Dot(s_Forward) / s_Forward:Dot(s_Forward)
				print("z: " .. string.format("%.3f", s_FactForward))

				local s_DistToHit = (((s_Diff):Cross(Globals.LastPorjectile.forward)).magnitude) / Globals.LastPorjectile.forward.magnitude
				print("Distance: " .. string.format("%.3f", s_DistToHit))
				print("-----")
			end

			for j = 0, s_VehicleEntity.partCount - 1 do
				if p_Player.controlledControllable.physicsEntityBase:GetPart(j) ~= nil then -- And p_Player.controlledControllable.physicsEntityBase:GetPart(j):Is("ServerChildComponent") then
					local s_QuatTransform = p_Player.controlledControllable.physicsEntityBase:GetPartTransform(j)

					if s_QuatTransform == nil then
						return -1
					end

					-- print(p_Player.controlledControllable.physicsEntityBase:GetPart(j).typeInfo.name)

					local s_Direction = s_QuatTransform:ToLinearTransform().forward - s_Pos
					local s_Position = s_QuatTransform:ToLinearTransform().trans
					if Registry.DEBUG.VEHICLE_PROJECTILE_TRACE and Globals.LastPorjectile ~= nil then
						-- print(s_Position - p_Player.controlledControllable.transform.trans)
						local s_DiffDir = s_QuatTransform:ToLinearTransform().forward - Globals.LastPorjectile.forward

						if s_DiffDir.magnitude < 0.05 then
							print("index: " .. j)
							print(s_Direction)
							print(s_DiffDir)
							print("Offset to bullet:")
							local s_Diff = Globals.LastPorjectile.trans - s_Position

							local s_Left = Globals.LastPorjectile.left
							local s_FactLeft = s_Diff:Dot(s_Left) / s_Left:Dot(s_Left)
							print("x: " .. string.format("%.3f", s_FactLeft))

							local s_Up = Globals.LastPorjectile.up
							local s_FactUp = s_Diff:Dot(s_Up) / s_Up:Dot(s_Up)
							print("y: " .. string.format("%.3f", s_FactUp))

							local s_Forward = Globals.LastPorjectile.forward
							local s_FactForward = s_Diff:Dot(s_Forward) / s_Forward:Dot(s_Forward)
							print("z: " .. string.format("%.3f", s_FactForward))

							-- only for validatiaon
							-- local s_NewEnd = s_Position + (s_Forward * s_FactForward) + (s_Left * s_FactLeft) + (s_Up * s_FactUp)
							-- print(s_NewEnd - Globals.LastPorjectile.trans)

							local s_DistToHit = (((s_Diff):Cross(Globals.LastPorjectile.forward)).magnitude) / Globals.LastPorjectile.forward.magnitude
							print("Distance: " .. string.format("%.3f", s_DistToHit))
						end
					else
						print("index: " .. j)
						print(s_Direction)
					end

					m_CarParts[j] = s_Direction
				end
			end
		end
	elseif p_Parts[1] == '!perks' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands).', p_Player)
			return
		end
		print(g_Utilities:dump(p_Player.selectedUnlocks, true, 4))
	elseif p_Parts[1] == '!cardiff' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands).', p_Player)
			return
		end

		if p_Player.attachedControllable ~= nil then
			local s_VehicleName = VehicleEntityData(p_Player.controlledControllable.data).controllableType:gsub(".+/.+/", "")
			local s_Pos = p_Player.controlledControllable.transform.forward
			print(s_VehicleName)
			local s_VehicleEntity

			-- Vehicle found.
			print(p_Player.controlledControllable.physicsEntityBase.partCount)
			s_VehicleEntity = p_Player.controlledControllable.physicsEntityBase

			for j = 0, s_VehicleEntity.partCount - 1 do
				if p_Player.controlledControllable.physicsEntityBase:GetPart(j) ~= nil then -- And p_Player.controlledControllable.physicsEntityBase:GetPart(j):Is("ServerChildComponent") then
					local s_QuatTransform = p_Player.controlledControllable.physicsEntityBase:GetPartTransform(j)

					if s_QuatTransform == nil then
						return -1
					end

					print(p_Player.controlledControllable.physicsEntityBase:GetPart(j).typeInfo.name)
					print("index: " .. j)
					local s_Direction = s_QuatTransform:ToLinearTransform().forward - s_Pos

					if m_CarParts[j] ~= nil then
						print(s_Direction - m_CarParts[j])
					end
				end
			end
		end
		-- Trace stuff
	elseif p_Parts[1] == '!trace' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.Trace') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.Trace).', p_Player)
			return
		end

		NetEvents:SendToLocal('ClientNodeEditor:StartTrace', p_Player)
	elseif p_Parts[1] == '!tracedone' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.TraceDone') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.TraceDone).', p_Player)
			return
		end

		NetEvents:SendToLocal('ClientNodeEditor:EndTrace', p_Player)
	elseif p_Parts[1] == '!cleartrace' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.ClearTrace') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.ClearTrace).', p_Player)
			return
		end

		NetEvents:SendToLocal('ClientNodeEditor:ClearTrace', p_Player)
	elseif p_Parts[1] == '!clearalltraces' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.ClearAllTraces') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.ClearAllTraces).', p_Player)
			return
		end

		m_NodeCollection:Clear()
		NetEvents:SendToLocal('NodeCollection:Clear', p_Player)
	elseif p_Parts[1] == '!printtrans' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.PrintTransform') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.PrintTransform).', p_Player)
			return
		end

		print('!printtrans')
		ChatManager:Yell('!printtrans check server console', 2.5)
		print(p_Player.soldier.worldTransform)
		print(p_Player.soldier.worldTransform.trans.x)
		print(p_Player.soldier.worldTransform.trans.y)
		print(p_Player.soldier.worldTransform.trans.z)
	elseif p_Parts[1] == '!tracesave' then
		if PermissionManager:HasPermission(p_Player, 'ChatCommands.TraceSave') == false then
			ChatManager:SendMessage('You have no permissions for this action (ChatCommands.TraceSave).', p_Player)
			return
		end

		local s_TraceIndex = tonumber(p_Parts[2]) or 0
		NetEvents:SendToLocal('ClientNodeEditor:SaveTrace', p_Player, s_TraceIndex)

		-- Section: Debugging, Bug Reporting and error logging.
		-- Command: !bugreport
		-- Permission: Debug.BugReport
	elseif p_Parts[1] == '!bugreport' then
		if PermissionManager:HasPermission(p_Player, 'Debug.BugReport') == false then
			ChatManager:SendMessage('You have no permissions for this action (Debug.BugReport).', p_Player)
			return
		end

		BugReport:GenerateReport(p_Player)
	else
		-- Nothing to do.
	end
end

if g_ChatCommands == nil then
	---@type ChatCommands
	g_ChatCommands = ChatCommands()
end

return g_ChatCommands
