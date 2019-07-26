defmodule SqlLikeTest do
  use ExUnit.Case
  doctest SqlLike

  test "sanitizes the default escape character, % and _" do
    assert SqlLike.sanitize("%as_df\\") == "\\%as\\_df\\\\"
  end

  test "sanitizes custom escape characters" do
    assert SqlLike.sanitize("%as_df!", "!") == "!%as!_df!!"
  end
end
