PRO visit_red_and_blue, red, green, blue
; visit_red_and_blue
red   = Interpol([255, 0],[0, 255],Findgen(256))
green = Interpol([0, 0],[0, 255],Findgen(256))
blue  = Interpol([0, 255],[0, 255],Findgen(256))
END
