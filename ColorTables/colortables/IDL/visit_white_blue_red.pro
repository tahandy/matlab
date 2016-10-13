PRO visit_white_blue_red, red, green, blue
; visit_white_blue_red
red   = Interpol([255, 255, 0, 0, 189, 255],[0, 12.094854, 13.102767, 120.94854, 189.486165, 255],Findgen(256))
green = Interpol([255, 255, 0, 0, 0, 0],[0, 12.094854, 13.102767, 120.94854, 189.486165, 255],Findgen(256))
blue  = Interpol([255, 255, 151, 255, 0, 0],[0, 12.094854, 13.102767, 120.94854, 189.486165, 255],Findgen(256))
END
