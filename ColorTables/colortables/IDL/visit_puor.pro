PRO visit_puor, red, green, blue
; visit_puor
red   = Interpol([127, 179, 224, 253, 254, 247, 216, 178, 128, 84, 45],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
green = Interpol([59, 88, 130, 184, 224, 247, 218, 171, 115, 39, 0],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
blue  = Interpol([8, 6, 20, 99, 182, 247, 235, 210, 172, 136, 75],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
END