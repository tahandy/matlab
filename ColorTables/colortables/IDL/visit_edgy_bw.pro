PRO visit_edgy_bw, red, green, blue
; visit_edgy_bw
red   = Interpol([255, 0, 0, 255],[0, 84.65439, 161.70723, 255],Findgen(256))
green = Interpol([255, 0, 0, 255],[0, 84.65439, 161.70723, 255],Findgen(256))
blue  = Interpol([255, 0, 0, 255],[0, 84.65439, 161.70723, 255],Findgen(256))
END
