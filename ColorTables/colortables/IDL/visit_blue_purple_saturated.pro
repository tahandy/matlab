PRO visit_blue_purple_saturated, red, green, blue
; visit_blue_purple_saturated
red   = Interpol([255, 255, 255, 108, 0],[0, 67.33989, 133.68936, 195.58245, 255],Findgen(256))
green = Interpol([0, 255, 141, 0, 0],[0, 67.33989, 133.68936, 195.58245, 255],Findgen(256))
blue  = Interpol([0, 0, 0, 103, 255],[0, 67.33989, 133.68936, 195.58245, 255],Findgen(256))
END
