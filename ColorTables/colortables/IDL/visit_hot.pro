PRO visit_hot, red, green, blue
; visit_hot
red   = Interpol([0, 0, 0, 255, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
green = Interpol([0, 255, 255, 255, 0],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
blue  = Interpol([255, 255, 0, 0, 0],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
END
