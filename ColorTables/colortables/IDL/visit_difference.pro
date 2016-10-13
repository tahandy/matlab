PRO visit_difference, red, green, blue
; visit_difference
red   = Interpol([0, 255, 255],[0, 127.5, 255],Findgen(256))
green = Interpol([0, 255, 0],[0, 127.5, 255],Findgen(256))
blue  = Interpol([255, 255, 0],[0, 127.5, 255],Findgen(256))
END
