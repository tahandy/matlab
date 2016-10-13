PRO visit_black_yellow_red, red, green, blue
; visit_black_yellow_red
red   = Interpol([0, 0, 146, 255, 183],[0, 5.1204765, 76.807275, 139.277175, 255],Findgen(256))
green = Interpol([0, 0, 40, 255, 102],[0, 5.1204765, 76.807275, 139.277175, 255],Findgen(256))
blue  = Interpol([0, 0, 0, 0, 0],[0, 5.1204765, 76.807275, 139.277175, 255],Findgen(256))
END
