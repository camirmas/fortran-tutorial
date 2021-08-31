program variables

    implicit none
    
    REAL, PARAMETER :: PI = 3.1415 ! constants
    REAL :: r_num1 = 0.0, r_num2 = 0.0 ! initial values
    DOUBLE PRECISION :: dbl_num = 1.111111111111111d+0 ! 15 decimals
    INTEGER :: i_num1 = 0, i_num2 = 0
    LOGICAL :: can_vote = .true.
    COMPLEX :: com_num = (2.0, 4.0)

    print *, "Biggest Real ", huge(r_num1)
    print *, "Biggest Int ", huge(i_num1)
    print *, "Smallest Real ", tiny(r_num1)
    print "(a4, i1)", "Int ", kind(i_num1)
    print "(a5, i1)", "Real ", kind(r_num1)
    print "(a7, i1)", "Double ", kind(dbl_num)
    print "(a8, i1)", "Logical ", kind(can_vote)

end program variables
