PRO visit_prgn, red, green, blue
; visit_prgn
red   = Interpol([64, 118, 153, 194, 231, 247, 217, 166, 90, 27, 0],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
green = Interpol([0, 42, 112, 165, 212, 247, 240, 219, 174, 120, 68],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
blue  = Interpol([75, 131, 171, 207, 232, 247, 211, 160, 97, 55, 27],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
END
