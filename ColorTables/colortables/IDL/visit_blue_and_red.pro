PRO visit_blue_and_red, red, green, blue
; visit_blue_and_red
red   = Interpol([0, 255],[0, 255],Findgen(256))
green = Interpol([0, 0],[0, 255],Findgen(256))
blue  = Interpol([255, 0],[0, 255],Findgen(256))
END
