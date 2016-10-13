PRO visit_black_blue_red_white, red, green, blue
; visit_black_blue_red_white
red   = Interpol([0, 60, 164, 255, 255],[0, 115.368885, 198.67458, 252.028995, 255],Findgen(256))
green = Interpol([0, 0, 0, 255, 255],[0, 115.368885, 198.67458, 252.028995, 255],Findgen(256))
blue  = Interpol([0, 178, 0, 255, 255],[0, 115.368885, 198.67458, 252.028995, 255],Findgen(256))
END
