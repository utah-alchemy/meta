defmodule Meta.ControlFlow.Test do
  use ExUnit.Case

  import Kernel, [except: [if: 2, unless: 2]]
                  #import ExUnit.CaptureIO
  require Meta.ControlFlow
  import Meta.ControlFlow

  describe "if" do
    @tag :skip
    test "returns the `do` if truthy" do
      ret = if true, do: :ok

      assert ret == :ok
    end

    @tag :skip
    test "returns the `else` if falsy" do
      ret =
        if false do
          :ok
        else
          :error
        end

      assert ret == :error
    end

    @tag :skip
    test "defaults else_clause to nil" do
      ret = if false, do: :ok

      assert ret == nil
    end
  end

  describe "unless" do
    @tag :skip
    test "returns the `do` unless truthy" do
      ret = unless false, do: :ok

      assert ret == :ok
    end

    @tag :skip
    test "returns the `else` unless falsy" do
      ret =
        unless true do
          :ok
        else
          :error
        end

      assert ret == :error
    end

    @tag :skip
    test "defaults else_clause to nil" do
      ret = unless true, do: :ok

      assert ret == nil
    end
  end
end
