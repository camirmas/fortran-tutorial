program format

    implicit none

    INTEGER :: num, cups
    REAL :: liters, quarts
    
    do num = 1,12
        print 100, num, num * 7
        100 FORMAT(i2, " * 7 = ", i3)
    end do

    print "(/a18)", "Cups Liters Quarts"
    do cups = 1, 10
        liters = cups * .236
        quarts = cups * .208
        print 200, cups, liters, quarts
        200 FORMAT(' ', i3, 2x, f5.3, 2x, f5.3)
    end do

end program format
