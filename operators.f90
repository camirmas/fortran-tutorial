program operators

    implicit none
    
    REAL :: float_num = 1.111111111111111
    REAL :: float_num2 = 1.111111111111111
    DOUBLE PRECISION :: dbl_num = 1.111111111111111d+0
    DOUBLE PRECISION :: dbl_num2 = 1.111111111111111d+0
    REAL :: rand(1) ! 1 random number
    INTEGER :: low = 1, high = 10

    print "(a8,i1)", "5 + 4 = ", (5 + 4)
    print "(a8,i1)", "5 - 4 = ", (5 - 4)
    print "(a8,i2)", "5 * 4 = ", (5 * 4)
    print "(a8,i1)", "5 / 4 = ", (5 / 4)
    print "(a8,i1)", "5 % 4 = ", MOD(5, 4)
    print "(a9,i3)", "5 ** 4 = ", (5 ** 4)

    print "(f17.15)", float_num + float_num2
    print "(f17.15)", dbl_num + dbl_num2

    CALL RANDOM_NUMBER(rand)
    print *, rand
    print "(i2)", low + FLOOR((high + 1 - low)*rand)

end program operators
