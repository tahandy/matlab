PRO visit_red_gold_blue, red, green, blue
; visit_red_gold_blue
red   = Interpol([255, 255, 255, 108, 0],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
green = Interpol([0, 255, 141, 0, 0],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
blue  = Interpol([0, 0, 0, 103, 255],[0, 63.75, 127.5, 191.25, 255],Findgen(256))
END
