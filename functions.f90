program functions

    implicit none
    
    integer :: ans, ans2
    real :: r_ans

    ans = get_sum(5, 4)
    print "(a8, i1)", "5 + 4 = ", ans

    ans = get_sum2(5, 4)
    print "(a8, i1)", "5 + 4 = ", ans

    ans = factorial(4)
    print "(a15, i2)", "factorial(4) = ", ans

contains
    integer function get_sum(n1, n2)
        implicit none
        INTEGER :: n1, n2, sum
        sum = n1 + n2
    end function get_sum

    function get_sum2(n1, n2) result(sum)
        implicit none
        INTEGER, intent(in) :: n1, n2 ! make n1, n2 immutable
        integer :: sum
        sum = n1 + n2
    end function get_sum2

    pure function get_sum3(n1, n2) result(sum) ! make inputs immutable
        implicit none
        INTEGER, INTENT(IN) :: n1
        INTEGER, INTENT(IN), optional :: n2
        integer :: sum

        if (present(n2)) then
            sum = n1 + n2
        else
            sum = n1
        end if
    end function get_sum3

    recursive function factorial(n) result(o)
        integer :: n, o
        if (n == 1) then
            o = 1
        else
            o = n * factorial(n - 1)
        end if
    end function factorial

end program functions
