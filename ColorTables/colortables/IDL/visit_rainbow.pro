PRO visit_rainbow, red, green, blue
; visit_rainbow
red   = Interpol([255, 0, 0, 0, 255, 255],[0, 51, 102, 153, 204, 255],Findgen(256))
green = Interpol([0, 0, 255, 255, 255, 0],[0, 51, 102, 153, 204, 255],Findgen(256))
blue  = Interpol([255, 255, 255, 0, 0, 0],[0, 51, 102, 153, 204, 255],Findgen(256))
END
