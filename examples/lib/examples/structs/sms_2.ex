defmodule Examples.Structs.Sms do
  @enforce_keys [:from, :to]
  defstruct @enforce_keys ++ [ :body, status: "delivered"]

  def other_party(sms) do
    case sms.status do
      "delivered" -> sms.to
      "recieved" -> sms.from
    end
  end
end
