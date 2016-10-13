PRO visit_black_yellow_red_white, red, green, blue
; visit_black_yellow_red_white
red   = Interpol([0, 0, 146, 255, 214, 255],[0, 5.1204765, 76.807275, 139.277175, 209.39019, 255],Findgen(256))
green = Interpol([0, 0, 40, 255, 143, 255],[0, 5.1204765, 76.807275, 139.277175, 209.39019, 255],Findgen(256))
blue  = Interpol([0, 0, 0, 0, 0, 255],[0, 5.1204765, 76.807275, 139.277175, 209.39019, 255],Findgen(256))
END
