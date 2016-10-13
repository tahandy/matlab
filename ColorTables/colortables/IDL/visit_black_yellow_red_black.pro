PRO visit_black_yellow_red_black, red, green, blue
; visit_black_yellow_red_black
red   = Interpol([0, 255, 255, 127, 0, 0],[0, 18.853986, 131.035065, 173.45661, 220.12008, 255],Findgen(256))
green = Interpol([0, 255, 0, 0, 0, 0],[0, 18.853986, 131.035065, 173.45661, 220.12008, 255],Findgen(256))
blue  = Interpol([0, 0, 0, 0, 0, 0],[0, 18.853986, 131.035065, 173.45661, 220.12008, 255],Findgen(256))
END
