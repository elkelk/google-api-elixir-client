defmodule Google.Apis.Analytics.Accounts do
  use Google.Apis.Base, endpoint: "https://www.googleapis.com/analytics/v3/management/accounts?", oauth_only: true

  @doc """
  Google Analytics, Accounts Management: https://developers.google.com/analytics/devguides/config/mgmt/v3/mgmtReference/management/accounts

  Usage:
  Google.Apis.Analytics.Accounts.list()

  Available options:
  max_results: 100, start_index: 0

  See https://developers.google.com/analytics/devguides/config/mgmt/v3/mgmtReference/management/accounts/list
  """
  def list(token, params \\ [max_results: 100,  start_index: 0]) do
    headers = ["Authorization": "Bearer #{token}"]
    get!(URI.encode_query(params), headers).body
  end
end