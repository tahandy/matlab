PRO visit_red_white_blue, red, green, blue
; visit_red_white_blue
red   = Interpol([255, 255, 0],[0, 127.5, 255],Findgen(256))
green = Interpol([0, 255, 0],[0, 127.5, 255],Findgen(256))
blue  = Interpol([0, 255, 255],[0, 127.5, 255],Findgen(256))
END
