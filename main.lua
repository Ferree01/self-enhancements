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
        local function HackDerma()
        local midW, midH = ScrW() / 2
        HackDerma = vgui.Create("DFrame")
        HackDerma:SetSize(500, 450)
        HackDerma:Center()
        HackDerma:SetTitle( "Hack Menu" )
        HackDerma:ShowCloseButton(false)
    
        myButton = vgui.Create("DButton", HackDerma)
        myButton:SetText( "Close" )
        myButton:SetPos( 458, 4)
        myButton:SetSize(90, 28)
        myButton:SizeToContents()
        myButton.DoClick = function() HackDerma:Close() key_ran = 1 end
        HackDerma:MakePopup()

        local ESPenable = vgui.Create("DButton", HackDerma)
        ESPenable:SetPos(40, 50)
        ESPenable:SetSize(90, 28)
        ESPenable:SetText("Enable ESP")
        function  ESPenable:OnMousePressed()
      print("ESP activated")
      end
      end
      concommand.Add( "open", HackDerma )
end

