PRO visit_tricolor, red, green, blue
; visit_tricolor
red   = Interpol([0, 255, 255],[0, 144.41211, 255],Findgen(256))
green = Interpol([0, 255, 0],[0, 144.41211, 255],Findgen(256))
blue  = Interpol([255, 255, 0],[0, 144.41211, 255],Findgen(256))
END
