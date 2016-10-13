PRO visit_hot_and_cold, red, green, blue
; visit_hot_and_cold
red   = Interpol([0, 0, 0, 255, 255],[0, 114.75, 127.5, 140.25, 255],Findgen(256))
green = Interpol([255, 0, 0, 0, 255],[0, 114.75, 127.5, 140.25, 255],Findgen(256))
blue  = Interpol([255, 255, 127, 0, 0],[0, 114.75, 127.5, 140.25, 255],Findgen(256))
END
