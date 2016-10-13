PRO visit_bluehot, red, green, blue
; visit_bluehot
red   = Interpol([0, 0, 0, 255],[0, 84.915, 169.83, 255],Findgen(256))
green = Interpol([0, 0, 127, 255],[0, 84.915, 169.83, 255],Findgen(256))
blue  = Interpol([0, 127, 255, 255],[0, 84.915, 169.83, 255],Findgen(256))
END
