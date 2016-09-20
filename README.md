# Dumballah

[![Build Status](https://travis-ci.org/ZuraGuerra/dumballah.svg?branch=master)](https://travis-ci.org/ZuraGuerra/dumballah)
[![Inline docs](http://inch-ci.org/github/ZuraGuerra/dumballah.svg)](http://inch-ci.org/github/ZuraGuerra/dumballah)
[![Deps Status](https://beta.hexfaktor.org/badge/all/github/ZuraGuerra/dumballah.svg)](https://beta.hexfaktor.org/github/ZuraGuerra/dumballah)
[![Hex version](https://img.shields.io/hexpm/v/dumballah.svg)](https://hex.pm/packages/dumballah)

Dumballah is a tiny library that provides conversions between seconds and other time units, and some useful calculations to make easier the manipulation of Unix timestamps.

Here is the [documentation](https://hexdocs.pm/dumballah/api-reference.html).

## Requirements

Elixir 1.3+.

## Installation

Just add it to your `mix.exs` file:

```elixir
defp deps do
  [{:dumballah, "~> 1.3"}]
end
```

## Usage

### Conversions

From `:hours`, `:days` and `:minutes` to seconds.
```elixir
Dumballah.Convert.to_seconds(:hours, 7)
> 25200
```

And viceversa.
```elixir
Dumballah.Convert.from_seconds(:hours, 25200)
> 7.0
```

### Calculations

Add and substract `:hours`, `:days` and `:minutes` in seconds.
```elixir
Dumballah.now
|> Dumballah.Calculate.add_time(:days, 1)
> 1473962718
```

Identify passed timestamps.
```elixir
Dumballa.now
|> Dumballah.Calculate.has_passed?
> true
```

And more, like `date_from_dawn/1` and `seconds_until_midnight/1`: check the [docs](https://hexdocs.pm/dumballah/api-reference.html).

## Notes
`Dumballah.now/0` returns your current local time in seconds. If you need the current UTC time, use `DateTime.utc_now/0`, which is part of the Elixir standard library since 1.3.

## Recommended Readings

Working with date times is a [real](http://infiniteundo.com/post/25326999628/falsehoods-programmers-believe-about-time) [pain](http://infiniteundo.com/post/25509354022/more-falsehoods-programmers-believe-about-time); these links provide some insights on how the Erlang VM deals with time. You might find them useful.

[`calendar` module docs](http://erlang.org/doc/man/calendar.html)

[`os:timestamp/0` docs](http://erlang.org/doc/man/os.html#timestamp-0)

[`time/0` docs](http://erlang.org/doc/man/erlang.html#time-0)

[Time Correction in Erlang](http://erlang.org/doc/apps/erts/time_correction.html)

---

Sponsored by [steed.](http://steed.mx/)

![steed.](https://avatars1.githubusercontent.com/u/20601055?v=3&s=200)
