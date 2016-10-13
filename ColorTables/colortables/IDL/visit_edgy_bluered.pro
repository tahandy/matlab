PRO visit_edgy_bluered, red, green, blue
; visit_edgy_bluered
red   = Interpol([0, 0, 0, 255],[0, 84.65439, 161.70723, 255],Findgen(256))
green = Interpol([0, 0, 0, 0],[0, 84.65439, 161.70723, 255],Findgen(256))
blue  = Interpol([255, 0, 0, 0],[0, 84.65439, 161.70723, 255],Findgen(256))
END
