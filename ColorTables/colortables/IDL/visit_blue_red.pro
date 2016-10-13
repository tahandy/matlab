PRO visit_blue_red, red, green, blue
; visit_blue_red
red   = Interpol([0, 108, 255, 255],[0, 63.75, 191.25, 255],Findgen(256))
green = Interpol([0, 0, 216, 0],[0, 63.75, 191.25, 255],Findgen(256))
blue  = Interpol([255, 103, 0, 0],[0, 63.75, 191.25, 255],Findgen(256))
END
