PRO visit_oranges, red, green, blue
; visit_oranges
red   = Interpol([255, 254, 253, 253, 253, 241, 217, 166, 127],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
green = Interpol([245, 230, 208, 174, 141, 105, 72, 54, 39],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
blue  = Interpol([235, 206, 162, 107, 60, 19, 1, 3, 4],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
END
