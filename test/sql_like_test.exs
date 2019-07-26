defmodule SqlLikeTest do
  use ExUnit.Case
  doctest SqlLike

  test "sanitizes \\, % and _" do
    assert SqlLike.sanitize("%as_df\\") == "\\%as\\_df\\\\"
  end
end
