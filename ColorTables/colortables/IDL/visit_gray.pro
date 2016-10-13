PRO visit_gray, red, green, blue
; visit_gray
red   = Interpol([0, 255],[0, 255],Findgen(256))
green = Interpol([0, 255],[0, 255],Findgen(256))
blue  = Interpol([0, 255],[0, 255],Findgen(256))
END
