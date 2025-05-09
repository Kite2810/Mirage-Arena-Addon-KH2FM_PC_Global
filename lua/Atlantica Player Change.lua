LUAGUI_NAME = "Atlantica Player Change"
LUAGUI_AUTH = "KSX"
LUAGUI_DESC = "Atlantica Player Change"

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
				ConsolePrint("Atlantica Player Change (EPIC GL) - installed")
			end
			
			if ReadLong(stmcheck) == 0x7265737563697065 and IsSteamGame == 0 then
				IsSteamGame = 1
				ConsolePrint("Atlantica Player Change (Steam GL) - installed")
			end
			
			if ReadLong(stmjpcheck) == 0x7265737563697065 and IsSteamJPGame == 0 then
				IsSteamJPGame = 1
				ConsolePrint("Atlantica Player Change (Steam JP) - installed")
			end
		
			if IsEpicGame == 1 then
			World = 0x716DF8
			TextBox = ReadLong(ReadLong(0x2A15D90)+0x40,true)+0x40C,true
			PartyMember = ReadLong(0x2A24D60)+0x734, true
			if ReadByte(World) == 0x0B then
				if ReadByte(TextBox, true) == 1 then
				WriteShort(PartyMember, 0x0054, true)
				elseif ReadByte(TextBox, true) == 2 then
				WriteShort(PartyMember, 0x0DC7, true)
				elseif ReadByte(TextBox, true) == 3 then
				WriteShort(PartyMember, 0x0DC9, true)
				elseif ReadByte(TextBox, true) == 4 then
				WriteShort(PartyMember, 0x0DC8, true)
				elseif ReadByte(TextBox, true) == 5 then
				WriteShort(PartyMember, 0x0DCA, true)
				elseif ReadByte(TextBox, true) == 6 then
				WriteShort(PartyMember, 0x0DCB, true)
				elseif ReadByte(TextBox, true) == 7 then
				WriteShort(PartyMember, 0x0DCC, true)
				elseif ReadByte(TextBox, true) == 8 then
				WriteShort(PartyMember, 0x0DCD, true)
				elseif ReadByte(TextBox, true) == 9 then
				WriteShort(PartyMember, 0x0DCE, true)
				end
			end
			end
			
			if IsSteamGame == 1 then
			World = 0x717008
			TextBox = ReadLong(ReadLong(0x2A16310)+0x40,true)+0x40C,true
			PartyMember = ReadLong(0x2A252E0)+0x734, true
			if ReadByte(World) == 0x0B then
				if ReadByte(TextBox, true) == 1 then
				WriteShort(PartyMember, 0x0054, true)
				elseif ReadByte(TextBox, true) == 2 then
				WriteShort(PartyMember, 0x0DC7, true)
				elseif ReadByte(TextBox, true) == 3 then
				WriteShort(PartyMember, 0x0DC9, true)
				elseif ReadByte(TextBox, true) == 4 then
				WriteShort(PartyMember, 0x0DC8, true)
				elseif ReadByte(TextBox, true) == 5 then
				WriteShort(PartyMember, 0x0DCA, true)
				elseif ReadByte(TextBox, true) == 6 then
				WriteShort(PartyMember, 0x0DCB, true)
				elseif ReadByte(TextBox, true) == 7 then
				WriteShort(PartyMember, 0x0DCC, true)
				elseif ReadByte(TextBox, true) == 8 then
				WriteShort(PartyMember, 0x0DCD, true)
				elseif ReadByte(TextBox, true) == 9 then
				WriteShort(PartyMember, 0x0DCE, true)
				end
			end
			end
	
			if IsSteamJPGame == 1 then
World = 0x717008
			TextBox = ReadLong(ReadLong(0x2A16310)+0x40,true)+0x40C,true
			PartyMember = ReadLong(0x2A252E0)+0x734, true
			if ReadByte(World) == 0x0B then
				if ReadByte(TextBox, true) == 1 then
				WriteShort(PartyMember, 0x0054, true)
				elseif ReadByte(TextBox, true) == 2 then
				WriteShort(PartyMember, 0x0DC7, true)
				elseif ReadByte(TextBox, true) == 3 then
				WriteShort(PartyMember, 0x0DC9, true)
				elseif ReadByte(TextBox, true) == 4 then
				WriteShort(PartyMember, 0x0DC8, true)
				elseif ReadByte(TextBox, true) == 5 then
				WriteShort(PartyMember, 0x0DCA, true)
				elseif ReadByte(TextBox, true) == 6 then
				WriteShort(PartyMember, 0x0DCB, true)
				elseif ReadByte(TextBox, true) == 7 then
				WriteShort(PartyMember, 0x0DCC, true)
				elseif ReadByte(TextBox, true) == 8 then
				WriteShort(PartyMember, 0x0DCD, true)
				elseif ReadByte(TextBox, true) == 9 then
				WriteShort(PartyMember, 0x0DCE, true)
				end
			end
			end
end
