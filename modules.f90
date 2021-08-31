program modules
    use mult_mod

    implicit none

    REAL :: r_ans

    print "(a8,i2)", "5 * 4 = ", mult(5, 4)
    r_ans = mult(5.3, 4.4)
    print "(a12,f6.2)", "5.3 * 4.4 = ", r_ans

end program modules
