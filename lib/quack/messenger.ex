defmodule Quack.Messenger do
  @moduledoc false
  use HTTPoison.Base

  def process_request_headers(headers) when is_map(headers) do
    Enum.into(headers, []) |> process_request_headers()
  end

  def process_request_headers(headers) when is_list(headers) do
    [{"content-type", "application/json"} | headers] |> Enum.uniq()
  end
end
