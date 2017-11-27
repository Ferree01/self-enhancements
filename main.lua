if (CLIENT) then
print( "opened and key_ran set to 1" )
key_ran = 1
hook.Add( "Think", "Open Menu", function()
    if( input.IsKeyDown( KEY_INSERT ) ) then
        if key_ran == 1 then
        key_ran = 0
        RunConsoleCommand("open")
    end
        end
end )
hook.Add ("Think", "Close Menu", function ()
    if( input.IsKeyDown( KEY_DELETE ) ) then
        key_ran = 1
    end
end)
        local function HackDerma()
        local midW, midH = ScrW() / 2
        local HackDerma = vgui.Create("DFrame")
        HackDerma:SetSize(500, 450)
        HackDerma:Center()
        HackDerma:SetTitle( "Hack Menu" )
        HackDerma:MakePopup()
      end
      concommand.Add( "open", HackDerma )
end

