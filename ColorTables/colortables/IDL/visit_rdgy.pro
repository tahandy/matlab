PRO visit_rdgy, red, green, blue
; visit_rdgy
red   = Interpol([103, 178, 214, 244, 253, 255, 224, 186, 135, 77, 26],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
green = Interpol([0, 24, 96, 165, 219, 255, 224, 186, 135, 77, 26],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
blue  = Interpol([31, 43, 77, 130, 199, 255, 224, 186, 135, 77, 26],[0, 25.5, 51, 76.5, 102, 127.5, 153, 178.5, 204, 229.5, 255],Findgen(256))
END
