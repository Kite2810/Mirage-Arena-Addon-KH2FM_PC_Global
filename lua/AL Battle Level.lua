LUAGUI_NAME = "AL Battle Level"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "AL Battle Level"

LMBTLVL1 = 20
LMBTLVL2 = 28
LMBTLVL3 = 33
LMBTLVL4 = 39
LMBTLVL5 = 50
LMBTLVL6 = 99

--- Game Version Check
epiccheck = 0x585B61
stmcheck = epiccheck+0x2F8
stmjpcheck = epiccheck+0x2A8


function _OnInit()
	if ENGINE_TYPE == "BACKEND" then
	IsEpicGame = 0
	IsSteamGame = 0
	IsSteamJPGame = 0
	end
end

function _OnFrame()	

			if ReadLong(epiccheck) == 0x7265737563697065 and IsEpicGame == 0 then
				IsEpicGame = 1
				ConsolePrint("AL Battle Level (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("AL Battle Level (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("AL Battle Level (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			AtlanticaFlags = 0x9AA3CC
			BattleLevel = 0x2AE53DB
			
			if ReadLong(AtlanticaFlags) == 0x0 or ReadLong(AtlanticaFlags) == 0x0000000E00000001 then
				WriteByte(BattleLevel, LMBTLVL1)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001600000002 then
					WriteByte(BattleLevel, LMBTLVL2)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001500000003 then
				WriteByte(BattleLevel, LMBTLVL3)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001400000004 then
					WriteByte(BattleLevel, LMBTLVL4)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001300000005 then
					WriteByte(BattleLevel, LMBTLVL5)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000000D00000000 then
					WriteByte(BattleLevel, LMBTLVL6)
			end

			end
			
			if IsSteamGame == 1 then
			AtlanticaFlags = 0x9AA94C
			BattleLevel = 0x2AE595B
			
			if ReadLong(AtlanticaFlags) == 0x0 or ReadLong(AtlanticaFlags) == 0x0000000E00000001 then
				WriteByte(BattleLevel, LMBTLVL1)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001600000002 then
					WriteByte(BattleLevel, LMBTLVL2)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001500000003 then
				WriteByte(BattleLevel, LMBTLVL3)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001400000004 then
					WriteByte(BattleLevel, LMBTLVL4)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001300000005 then
					WriteByte(BattleLevel, LMBTLVL5)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000000D00000000 then
					WriteByte(BattleLevel, LMBTLVL6)
			end
			end
	
			if IsSteamJPGame == 1 then
AtlanticaFlags = 0x9AA94C
			BattleLevel = 0x2AE595B
			
			if ReadLong(AtlanticaFlags) == 0x0 or ReadLong(AtlanticaFlags) == 0x0000000E00000001 then
				WriteByte(BattleLevel, LMBTLVL1)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001600000002 then
					WriteByte(BattleLevel, LMBTLVL2)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001500000003 then
				WriteByte(BattleLevel, LMBTLVL3)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001400000004 then
					WriteByte(BattleLevel, LMBTLVL4)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000001300000005 then
					WriteByte(BattleLevel, LMBTLVL5)
			end
			
			if ReadLong(AtlanticaFlags) == 0x0000000D00000000 then
					WriteByte(BattleLevel, LMBTLVL6)
			end
			end
end
