PRO visit_caleblack, red, green, blue
; visit_caleblack
red   = Interpol([0, 0, 0, 0, 255, 255, 255],[0, 43.35, 86.7, 127.5, 170.85, 214.2, 255],Findgen(256))
green = Interpol([0, 0, 255, 255, 255, 0, 0],[0, 43.35, 86.7, 127.5, 170.85, 214.2, 255],Findgen(256))
blue  = Interpol([0, 255, 255, 0, 0, 0, 255],[0, 43.35, 86.7, 127.5, 170.85, 214.2, 255],Findgen(256))
END
