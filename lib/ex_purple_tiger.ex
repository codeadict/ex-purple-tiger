defmodule ExPurpleTiger do
  @moduledoc """
  ExPurpleTiger generates animal-based hash digests meant to be memorable and
  human-readable. This library is suitble for anthropomorphizing project names,
  crypto addresses, UUIDs, or any complex string of characters that needs to be
  displayed in a user interface.
  """

  require Bitwise
  alias ExPurpleTiger.Data

  @adjectives Data.adjectives()
  @colors Data.colors()
  @animals Data.animals()

  @doc """
  Generates an animal-based hash.

  ## Options
    * `:separator` - the separator for the words in the hash, defaults to " ".
    * `:style` - the style to apply to the words in the hash. The available options
      are `:lowercase` (default), `:uppercase`, and `:titlecase`.

  ## Examples

      iex> ExPurpleTiger.animal_hash("my ugly input string")
      {:ok, "rapid grey rattlesnake"}

      iex> ExPurpleTiger.animal_hash("my ugly input string", style: :uppercase)
      {:ok, "RAPID GREY RATTLESNAKE"}

      iex> ExPurpleTiger.animal_hash("my ugly input string", separator: "-", style: :titlecase)
      {:ok, "Rapid-Grey-Rattlesnake"}

  """
  @spec animal_hash(String.t(), Keyword.t()) :: {:ok, String.t()} | :error
  def animal_hash(text, opts \\ []) when is_bitstring(text) and is_list(opts) do
    separator = Keyword.get(opts, :separator, " ")
    style = Keyword.get(opts, :style, :lowercase)

    unless is_bitstring(separator) do
      raise ArgumentError, ":separator must be a string, got: #{inspect(separator)}"
    end

    unless style == :lowercase or style == :uppercase or style == :titlecase do
      raise ArgumentError,
            "unsupported :style, has to be one of :lowercase, " <>
              ":uppercase, or :titlecase, got: #{inspect(style)}"
    end

    [adjective_index, color_index, animal_index] = hex_digest(text)

    hash =
      [
        Enum.at(@adjectives, adjective_index),
        Enum.at(@colors, color_index),
        Enum.at(@animals, animal_index)
      ]
      |> stylize(style)
      |> Enum.join(separator)

    {:ok, hash}
  end

  defp hex_digest(input) do
    digest = :erlang.md5(input)
    compress(div(byte_size(digest), 3), digest, [])
  end

  defp compress(size, binary, acc) do
    case binary do
      <<segment::binary-size(size), remain::binary>> when byte_size(remain) >= size ->
        res =
          List.foldl(:erlang.binary_to_list(segment), 0, fn left, right ->
            Bitwise.bxor(left, right)
          end)

        compress(size, remain, [res | acc])

      segment ->
        res =
          List.foldl(:erlang.binary_to_list(segment), 0, fn left, right ->
            Bitwise.bxor(left, right)
          end)

        Enum.reverse([res | acc])
    end
  end

  defp stylize(words, :lowercase) do
    words |> Enum.map(fn x -> String.downcase(x) end)
  end

  defp stylize(words, :uppercase) do
    words |> Enum.map(fn x -> String.upcase(x) end)
  end

  defp stylize(words, :titlecase) do
    words |> Enum.map(fn x -> String.capitalize(x) end)
  end
end
