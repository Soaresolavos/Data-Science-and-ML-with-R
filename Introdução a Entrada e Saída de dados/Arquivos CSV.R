# > crs <- read.csv('carros.csv')
# > head(crs)
# X  mpg cyl disp  hp drat    wt  qsec vs am gear carb
# 1         Mazda RX4 21.0   6  160 110 3.90 2.620 16.46  0  1    4    4
# 2     Mazda RX4 Wag 21.0   6  160 110 3.90 2.875 17.02  0  1    4    4
# 3        Datsun 710 22.8   4  108  93 3.85 2.320 18.61  1  1    4    1
# 4    Hornet 4 Drive 21.4   6  258 110 3.08 3.215 19.44  1  0    3    1
# 5 Hornet Sportabout 18.7   8  360 175 3.15 3.440 17.02  0  0    3    2
# 6           Valiant 18.1   6  225 105 2.76 3.460 20.22  1  0    3    1
# > tail(crs)
# X  mpg cyl  disp  hp drat    wt qsec vs am gear carb
# 27  Porsche 914-2 26.0   4 120.3  91 4.43 2.140 16.7  0  1    5    2
# 28   Lotus Europa 30.4   4  95.1 113 3.77 1.513 16.9  1  1    5    2
# 29 Ford Pantera L 15.8   8 351.0 264 4.22 3.170 14.5  0  1    5    4
# 30   Ferrari Dino 19.7   6 145.0 175 3.62 2.770 15.5  0  1    5    6
# 31  Maserati Bora 15.0   8 301.0 335 3.54 3.570 14.6  0  1    5    8
# 32     Volvo 142E 21.4   4 121.0 109 4.11 2.780 18.6  1  1    4    2
# > class(crs)
# [1] "data.frame"
# > n <- read.csv('new.csv')
# > n
# X nomeColuna1 nomeColuna2
# 1   1           1           a
# 2   2           2           b
# 3   3           3           c
# 4   4           4           d
# 5   5           5           e
# 6   6           6           f
# 7   7           7           g
# 8   8           8           h
# 9   9           9           i
# 10 10          10           j