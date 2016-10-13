PRO visit_fuity_dark_white, red, green, blue
; visit_fuity_dark_white
red   = Interpol([50, 113, 225, 255, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
green = Interpol([0, 18, 63, 216, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
blue  = Interpol([55, 172, 26, 0, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
END
