PRO visit_xray_black_white_black, red, green, blue
; visit_xray_black_white_black
red   = Interpol([0, 255, 0],[0, 127.5, 255],Findgen(256))
green = Interpol([0, 255, 0],[0, 127.5, 255],Findgen(256))
blue  = Interpol([0, 255, 0],[0, 127.5, 255],Findgen(256))
END
