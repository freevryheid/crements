module tests_crements
  use crements, only: inc, dec
  use stdlib_kinds, only: int8, int16, int32, int64
  use testdrive, only: error_type, unittest_type, new_unittest, check
  implicit none
  private
  public :: collect_tests
  contains
    subroutine collect_tests(testsuite)
      type(unittest_type), allocatable, intent(out) :: testsuite(:)
      testsuite = [                                  &
        new_unittest("test for inc8", test_inc8),    &
        new_unittest("test for inc16", test_inc16),  &
        new_unittest("test for inc32", test_inc32),  &
        new_unittest("test for inc64", test_inc64),  &
        new_unittest("test for dec8", test_dec8),    &
        new_unittest("test for dec16", test_dec16),  &
        new_unittest("test for dec32", test_dec32),  &
        new_unittest("test for dec64", test_dec64),  &
        new_unittest("test for inc8", test_inc8a),   &
        new_unittest("test for inc16", test_inc16a), &
        new_unittest("test for inc32", test_inc32a), &
        new_unittest("test for inc64", test_inc64a), &
        new_unittest("test for dec8", test_dec8a),   &
        new_unittest("test for dec16", test_dec16a), &
        new_unittest("test for dec32", test_dec32a), &
        new_unittest("test for dec64", test_dec64a)  &
      ]
    end subroutine collect_tests
    subroutine test_inc8(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int8) :: x, y
      x = 1_int8
      y = x + 1_int8
      call inc(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_inc8
    subroutine test_inc16(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int16) :: x, y
      x = 1_int16
      y = x + 1_int16
      call inc(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_inc16
    subroutine test_inc32(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int32) :: x, y
      x = 1_int32
      y = x + 1_int32
      call inc(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_inc32
    subroutine test_inc64(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int64) :: x, y
      x = 1_int64
      y = x + 1_int64
      call inc(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_inc64
    subroutine test_dec8(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int8) :: x, y
      x = 1_int8
      y = x - 1_int8
      call dec(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_dec8
    subroutine test_dec16(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int16) :: x, y
      x = 1_int16
      y = x - 1_int16
      call dec(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_dec16
    subroutine test_dec32(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int32) :: x, y
      x = 1_int32
      y = x - 1_int32
      call dec(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_dec32
    subroutine test_dec64(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int64) :: x, y
      x = 1_int64
      y = x - 1_int64
      call dec(x)
      call check(error, x, y)
      if (allocated(error)) return
    end subroutine test_dec64
    subroutine test_inc8a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int8) :: x, y, z
      x = 1_int8
      y = 1_int8
      z = x + y
      call inc(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_inc8a
    subroutine test_inc16a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int16) :: x, y, z
      x = 1_int16
      y = 1_int16
      z = x + y
      call inc(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_inc16a
    subroutine test_inc32a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int32) :: x, y, z
      x = 1_int32
      y = 1_int32
      z = x + y
      call inc(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_inc32a
    subroutine test_inc64a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int64) :: x, y, z
      x = 1_int64
      y = 1_int64
      z = x + y
      call inc(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_inc64a
    subroutine test_dec8a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int8) :: x, y, z
      x = 1_int8
      y = 1_int8
      z = x - y
      call dec(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_dec8a
    subroutine test_dec16a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int16) :: x, y, z
      x = 1_int16
      y = 1_int16
      z = x - y
      call dec(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_dec16a
    subroutine test_dec32a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int32) :: x, y, z
      x = 1_int32
      y = 1_int32
      z = x - y
      call dec(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_dec32a
    subroutine test_dec64a(error)
      type(error_type), allocatable, intent(out)    :: error
      integer(int64) :: x, y, z
      x = 1_int64
      y = 1_int64
      z = x - y
      call dec(x, y)
      call check(error, x, z)
      if (allocated(error)) return
    end subroutine test_dec64a

end module tests_crements
