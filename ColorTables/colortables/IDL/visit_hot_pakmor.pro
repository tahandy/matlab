PRO visit_hot_pakmor, red, green, blue
; visit_hot_pakmor
red   = Interpol([0, 0, 0, 0, 0, 200, 168, 91, 91],[0, 10.714284, 46.39266, 85.746555, 127.5, 170.000085, 208.92711, 242.1429, 255],Findgen(256))
green = Interpol([0, 0, 0, 70, 135, 200, 0, 0, 0],[0, 10.714284, 46.39266, 85.746555, 127.5, 170.000085, 208.92711, 242.1429, 255],Findgen(256))
blue  = Interpol([0, 0, 91, 184, 0, 0, 0, 0, 0],[0, 10.714284, 46.39266, 85.746555, 127.5, 170.000085, 208.92711, 242.1429, 255],Findgen(256))
END
