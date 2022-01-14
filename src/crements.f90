module crements
  use stdlib_kinds, only: int8, int16, int32, int64
  implicit none
  interface inc
    module procedure inc8, inc16, inc32, inc64, inc8a, inc16a, inc32a, inc64a
  end interface inc
  interface dec
    module procedure dec8, dec16, dec32, dec64, dec8a, dec16a, dec32a, dec64a
  end interface dec
  private
  public                            :: inc, dec
  contains
    subroutine inc8(x)
      integer(int8) , intent(inout) :: x
      x = x + 1_int8
    end subroutine inc8
    subroutine inc16(x)
      integer(int16), intent(inout) :: x
      x = x + 1_int16
    end subroutine inc16
    subroutine inc32(x)
      integer(int32), intent(inout) :: x
      x = x + 1_int32
    end subroutine inc32
    subroutine inc64(x)
      integer(int64), intent(inout) :: x
      x = x + 1_int64
    end subroutine inc64
    subroutine dec8(x)
      integer(int8) , intent(inout) :: x
      x = x - 1_int8
    end subroutine dec8
    subroutine dec16(x)
      integer(int16), intent(inout) :: x
      x = x - 1_int16
    end subroutine dec16
    subroutine dec32(x)
      integer(int32), intent(inout) :: x
      x = x - 1_int32
    end subroutine dec32
    subroutine dec64(x)
      integer(int64), intent(inout) :: x
      x = x - 1_int64
    end subroutine dec64
    subroutine inc8a(x, y)
      integer(int8), intent(inout)  :: x
      integer(int8), intent(in)     :: y
      x = x + int(y, int8)
    end subroutine inc8a
    subroutine inc16a(x, y)
      integer(int16), intent(inout) :: x
      integer(int16), intent(in)    :: y
      x = x + int(y, int16)
    end subroutine inc16a
    subroutine inc32a(x, y)
      integer(int32), intent(inout) :: x
      integer(int32), intent(in)    :: y
      x = x + int(y, int32)
    end subroutine inc32a
    subroutine inc64a(x, y)
      integer(int64), intent(inout) :: x
      integer(int64), intent(in)    :: y
      x = x + int(y, int64)
    end subroutine inc64a
    subroutine dec8a(x, y)
      integer(int8), intent(inout)  :: x
      integer(int8), intent(in)     :: y
      x = x - int(y, int8)
    end subroutine dec8a
    subroutine dec16a(x, y)
      integer(int16), intent(inout) :: x
      integer(int16), intent(in)    :: y
      x = x - int(y, int16)
    end subroutine dec16a
    subroutine dec32a(x, y)
      integer(int32), intent(inout) :: x
      integer(int32), intent(in)    :: y
      x = x - int(y, int32)
    end subroutine dec32a
    subroutine dec64a(x, y)
      integer(int64), intent(inout) :: x
      integer(int64), intent(in)    :: y
      x = x - int(y, int64)
    end subroutine dec64a
end module crements
