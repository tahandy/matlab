PRO visit_red_blue_white, red, green, blue
; visit_red_blue_white
red   = Interpol([128, 255, 42, 36, 69, 255, 255],[0, 42.500085, 84.999915, 127.5, 170.000085, 212.499915, 255],Findgen(256))
green = Interpol([0, 255, 42, 107, 208, 199, 0],[0, 42.500085, 84.999915, 127.5, 170.000085, 212.499915, 255],Findgen(256))
blue  = Interpol([0, 255, 42, 184, 74, 0, 0],[0, 42.500085, 84.999915, 127.5, 170.000085, 212.499915, 255],Findgen(256))
END
