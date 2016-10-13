PRO visit_red_orange_white, red, green, blue
; visit_red_orange_white
red   = Interpol([206, 108, 225, 255, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
green = Interpol([0, 0, 63, 216, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
blue  = Interpol([57, 103, 26, 0, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
END
