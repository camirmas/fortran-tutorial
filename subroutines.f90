program subroutines

    implicit none
    
    INTEGER :: i = 1, p1, p2

    CALL plus_two(i, p1, p2)
    print "(i1,/,i1,/,i1)", i, p1, p2

contains

    subroutine plus_two(n, plus1, plus2)
        INTEGER, INTENT(IN) :: n
        INTEGER, INTENT(OUT) :: plus1, plus2
        plus1 = n + 1
        plus2 = n + 2
    end subroutine plus_two

end program subroutines
