PRO visit_pastel1, red, green, blue
; visit_pastel1
red   = Interpol([251, 179, 204, 222, 254, 255, 229, 253, 242],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
green = Interpol([180, 205, 235, 203, 217, 255, 216, 218, 242],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
blue  = Interpol([174, 227, 197, 228, 166, 204, 189, 236, 242],[0, 31.875, 63.75, 95.625, 127.5, 159.375, 191.25, 223.125, 255],Findgen(256))
END
