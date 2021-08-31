program print

    implicit none

    CHARACTER(LEN=5) :: i_char

    print *, "A number ", 10
    ! RiW
        ! R: repeats per line
        ! i: integer
        ! W: width
    print "(3i5)", 7, 6, 8 ! one line
    print "(i5)", 7, 6, 8 ! each separate

    ! RfW.D
        ! R: repeats per line
        ! f: float
        ! W: width
        ! D: decimal places
    print "(2f8.5)", 3.1415, 1.234

    print "(/, 2a8)", "Name", "Age" ! Newline
    print "(e10.3)", 123.456 ! Exponential
    print "(a5, i3)", "I am ", 420

    write (i_char, "(i5)") 10
    print "(a,a)", "A number ", ADJUSTL(i_char)
 
end program print
