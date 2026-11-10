defmodule Lasagna do
  # Please define the 'expected_minutes_in_oven/0' function
  @doc "Returns the expected minutes to cook lasagna"
  @spec expected_minutes_in_oven() :: number()
  def expected_minutes_in_oven, do: 40

  # Please define the 'remaining_minutes_in_oven/1' function
  @doc "Returns the time left for the lasagna to be ready based on the time passed"
  @spec remaining_minutes_in_oven(number()) :: number()
  def remaining_minutes_in_oven(time_consumed) do
    expected_minutes_in_oven() - time_consumed
  end

  # Please define the 'preparation_time_in_minutes/1' function
  @doc "Returns the prep time for the lasagna based on layers added"
  @spec preparation_time_in_minutes(number()) :: number()
  def preparation_time_in_minutes(layers) do
    layers * 2
  end

  # Please define the 'total_time_in_minutes/2' function
  @doc "Returns the total working time based on time used to prep and time used to cook so far"
  @spec total_time_in_minutes(number(), number()) :: number()
  def total_time_in_minutes(layers, time_consumed) do
    preparation_time_in_minutes(layers) + time_consumed
  end

  # Please define the 'alarm/0' function
  @doc "Returns a notification that alerts the user that the lasagna is ready"
  @spec alarm() :: String.t()
  def alarm, do: "Ding!"
end
