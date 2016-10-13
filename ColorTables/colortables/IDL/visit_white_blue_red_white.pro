PRO visit_white_blue_red_white, red, green, blue
; visit_white_blue_red_white
red   = Interpol([235, 60, 255, 215, 255],[0, 19.457826, 130.0602, 210.963795, 255],Findgen(256))
green = Interpol([235, 0, 174, 0, 255],[0, 19.457826, 130.0602, 210.963795, 255],Findgen(256))
blue  = Interpol([235, 207, 0, 0, 255],[0, 19.457826, 130.0602, 210.963795, 255],Findgen(256))
END
