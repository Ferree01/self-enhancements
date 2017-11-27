if (CLIENT) then
print( "opened" )
hook.Add( "Think", "Open Menu", function()
    if( input.IsKeyDown( KEY_INSERT ) ) then
        if key_ran == 1 then
        key_ran = 0
        RunConsoleCommand("open")
    end
        end
end )
        local function HackDerma()
        key_ran = 1
        local midW, midH = ScrW() / 2
        local HackDerma = vgui.Create("DFrame")
        HackDerma:SetSize(500, 450)
        HackDerma:Center()
        HackDerma:SetTitle( "Hack Menu" )
        HackDerma:MakePopup()
      end
      concommand.Add( "open", HackDerma )
en
