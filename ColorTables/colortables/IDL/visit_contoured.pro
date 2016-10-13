PRO visit_contoured, red, green, blue
; visit_contoured
red   = Interpol([0, 0, 255, 255],[0, 84.915, 169.83, 255],Findgen(256))
green = Interpol([0, 255, 255, 0],[0, 84.915, 169.83, 255],Findgen(256))
blue  = Interpol([255, 0, 0, 0],[0, 84.915, 169.83, 255],Findgen(256))
END
