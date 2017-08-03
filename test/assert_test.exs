defmodule Meta.Assert.Test do
  use ExUnit.Case
  require Meta.Assert

  describe "assert equal" do
    @tag :skip
    test "succeeds if equal" do
      Meta.Assert.assert true == true
    end

    @tag :skip
    test "raise an exception if not equal" do
      assert_raise RuntimeError, "Uh oez! true =/= false", fn -> 
        Meta.Assert.assert true == false
      end
    end
  end

  describe "assert less than" do
    @tag :skip
    test "succeeds if less than" do
      Meta.Assert.assert 0 < 1
    end

    @tag :skip
    test "raise an exception if not less than" do
      assert_raise RuntimeError, "Uh oez! 0 is not < 0", fn -> 
        Meta.Assert.assert 0 < 0
      end
    end
  end
end
