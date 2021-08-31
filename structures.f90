program structures

    implicit none
    type Customer
        CHARACTER(len=40) :: name
        INTEGER :: age
        real :: balance
    end type Customer

    type(Customer), DIMENSION(5) :: customers
    integer :: n

    type(Customer) :: cust1
    cust1%name = "Dude Man"
    cust1%age = 69
    cust1%balance = 320.45
    customers(1) = cust1
    customers(2)%name = "Man Dude"
    customers(2)%age = 420
    customers(2)%balance = 420.69

    do n = 1, 2
        print *, customers(n)
    end do

end program structures
