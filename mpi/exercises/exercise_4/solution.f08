!> @brief Solution to the incorrect hello world exercise.
PROGRAM main
    USE mpi_f08

    IMPLICIT NONE

    INTEGER :: my_rank
    INTEGER :: comm_size

    ! ================================
    ! => Add the MPI initialisation <=
    ! ================================
    CALL MPI_Init()

    CALL MPI_Comm_rank(MPI_COMM_WORLD, my_rank)

    CALL MPI_Comm_size(MPI_COMM_WORLD, comm_size)

    WRITE(*, '(A,I0,A,I0,A)') '"Hello World!" from MPI process ', my_rank ,'. We are ', comm_size ,' MPI processes.'

    CALL MPI_Finalize()
END PROGRAM main