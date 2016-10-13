PRO visit_test, red, green, blue
; visit_test
red   = Interpol([0, 0, 255, 255],[0, 51.498372, 165.293142, 255],Findgen(256))
green = Interpol([0, 0, 0, 0],[0, 51.498372, 165.293142, 255],Findgen(256))
blue  = Interpol([255, 255, 0, 0],[0, 51.498372, 165.293142, 255],Findgen(256))
END
