PRO visit_blues, red, green, blue
; visit_blues
red   = Interpol([247, 222, 198, 158, 107, 66, 33, 8, 8],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
green = Interpol([251, 235, 219, 202, 174, 146, 113, 81, 48],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
blue  = Interpol([255, 247, 239, 225, 214, 198, 181, 156, 107],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
END
