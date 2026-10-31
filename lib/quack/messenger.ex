defmodule Quack.Messenger do
  @moduledoc false

  @doc false
  def post(url, body) when is_binary(url) and is_binary(body) do
    Req.post(url,
      body: body,
      headers: [{"content-type", "application/json"}],
      decode_body: false
    )
  end

  def post(_url, _body), do: :ok
end
