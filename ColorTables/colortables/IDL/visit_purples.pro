PRO visit_purples, red, green, blue
; visit_purples
red   = Interpol([252, 239, 218, 188, 158, 128, 106, 84, 63],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
green = Interpol([251, 237, 218, 189, 154, 125, 81, 39, 0],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
blue  = Interpol([253, 245, 235, 220, 200, 186, 163, 143, 125],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
END
