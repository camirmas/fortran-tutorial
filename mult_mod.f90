module mult_mod

    implicit none

    private
    public :: mult

    interface mult
        procedure mult_real, mult_int
    end interface mult

contains

    function mult_real(n1, n2) result(product)
        REAL, intent(in) :: n1, n2
        REAL :: product
        product = n1 * n2
    end function mult_real

    function mult_int(n1, n2) result(product)
        INTEGER, intent(in) :: n1, n2
        INTEGER :: product
        product = n1 * n2
    end function mult_int

end module mult_mod
