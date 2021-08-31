program arrays

    implicit none

    INTEGER, DIMENSION(1:5) :: a1, a2, a3 ! index from 1 to 5
    REAL, DIMENSION(1:50) :: aR1  ! index from 1 to 50
    INTEGER, DIMENSION(5,5) :: a4 ! 5x5 array
    INTEGER :: n, m, x, y
    INTEGER, DIMENSION(:), ALLOCATABLE :: a5
    INTEGER :: num_vals = 0
    INTEGER, DIMENSION(1:9) :: a6 = (/ 1,2,3,4,5,6,7,8,9 /)
    INTEGER, DIMENSION(1:3, 1:3) :: a7 ! 3x3 array

    a1(1) = 5
    print "(i1)", a1(1)

    do n = 1,5
        a1(n) = n
    end do

    do n = 1,5
        print "(i1)", a1(n)
    end do

    print "(3i2)", a1(1:3)
    print "(2i2)", a1(1:3:2)

    do n = 1,5
        do m = 1,5
            a4(n, m) = n
        end do
    end do

    do n = 1,5
        do m = 1,5
            print "(i1, a1, i1, a3, i1)", n, " ", m, " : ", a4(n, m)
        end do
    end do

    do n = 1,5
        print "(5i1)", (a4(n, m), m = 1,5) ! implied do loop
    end do

    print "(i2)", SIZE(a1)
    print "(i2)", SIZE(a4)
    print "(i2)", RANK(a4)
    print "(i2, i2)", SHAPE(a4)

    print *, "Size of array? "
    read *, num_vals
    ALLOCATE(a5(1:num_vals))

    do n = 1, num_vals
        a5(n) = n
    end do

    do n = 1, num_vals
        print "(i1)", a5(n)
    end do

    a2 = (/ 1,2,3,6,7 /)
    print "(5i1)", (a2(m), m = 1,5) ! reshape 1x9 to 3x3

    a7 = RESHAPE(a6, (/ 3, 3/))
    print "(l1)", ALL(a1 == a2, 1)
    print "(l1)", ANY(a1 == a2, 1)
    print "(l1)", COUNT(a1 == a2, 1)
    print "(i1)", MAXVAL(a1)
    print "(i1)", MINVAL(a1)
    print "(i3)", PRODUCT(a1)
    print "(i2)", SUM(a1)

end program arrays
