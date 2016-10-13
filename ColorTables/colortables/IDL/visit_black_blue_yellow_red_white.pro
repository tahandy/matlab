PRO visit_black_blue_yellow_red_white, red, green, blue
; visit_black_blue_yellow_red_white
red   = Interpol([0, 60, 255, 180, 255, 255],[0, 82.68936, 169.33989, 221.825265, 252.028995, 255],Findgen(256))
green = Interpol([0, 0, 194, 0, 255, 255],[0, 82.68936, 169.33989, 221.825265, 252.028995, 255],Findgen(256))
blue  = Interpol([0, 192, 0, 0, 255, 255],[0, 82.68936, 169.33989, 221.825265, 252.028995, 255],Findgen(256))
END
