PRO visit_accent, red, green, blue
; visit_accent
red   = Interpol([127, 190, 253, 255, 56, 240, 191, 102],[0, 36.428535, 72.85707, 109.285605, 145.714395, 182.14293, 218.571465, 255],Findgen(256))
green = Interpol([201, 174, 192, 255, 108, 2, 91, 102],[0, 36.428535, 72.85707, 109.285605, 145.714395, 182.14293, 218.571465, 255],Findgen(256))
blue  = Interpol([127, 212, 134, 153, 176, 127, 23, 102],[0, 36.428535, 72.85707, 109.285605, 145.714395, 182.14293, 218.571465, 255],Findgen(256))
END
