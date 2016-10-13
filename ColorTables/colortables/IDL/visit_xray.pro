PRO visit_xray, red, green, blue
; visit_xray
red   = Interpol([255, 0],[0, 255],Findgen(256))
green = Interpol([255, 0],[0, 255],Findgen(256))
blue  = Interpol([255, 0],[0, 255],Findgen(256))
END
