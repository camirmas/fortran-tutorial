program strings

    implicit none
    
    CHARACTER(len=30) :: str = "I'm a string"
    CHARACTER(len=30) :: str2 = " that is longer"
    CHARACTER(len=30) :: str3

    str3  = TRIM(str) // TRIM(str2) ! concat
    print *, str3
    print *, str3(1:3) ! substring
    print "(a9, i1)", "Index at ", index(str, "string") ! index of substring
    print *, LEN(str)

end program strings
