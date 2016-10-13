PRO visit_red_blue, red, green, blue
; visit_red_blue
red   = Interpol([255, 255, 108, 0],[0, 71.876085, 194.111355, 255],Findgen(256))
green = Interpol([0, 216, 0, 0],[0, 71.876085, 194.111355, 255],Findgen(256))
blue  = Interpol([0, 0, 103, 255],[0, 71.876085, 194.111355, 255],Findgen(256))
END
