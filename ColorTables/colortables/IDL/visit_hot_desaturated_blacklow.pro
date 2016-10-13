PRO visit_hot_desaturated_blacklow, red, green, blue
; visit_hot_desaturated_blacklow
red   = Interpol([0, 0, 0, 0, 255, 255, 107, 224],[0, 36.465, 72.675, 109.395, 145.605, 182.07, 218.535, 255],Findgen(256))
green = Interpol([0, 0, 255, 127, 255, 96, 0, 76],[0, 36.465, 72.675, 109.395, 145.605, 182.07, 218.535, 255],Findgen(256))
blue  = Interpol([0, 91, 255, 0, 0, 0, 0, 76],[0, 36.465, 72.675, 109.395, 145.605, 182.07, 218.535, 255],Findgen(256))
END
