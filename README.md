# ExPurpleTiger

ExPurpleTiger generates animal-based hash digests meant to be memorable and
human-readable. This library is suitble for anthropomorphizing project names,
crypto addresses, UUIDs, or any complex string of characters that needs to be
displayed in a user interface.

Original idea and implementation based on [angry-purple-tiger](https://github.com/helium/angry-purple-tiger) from  Helium Systems, Inc.
Thanks to them for coming up with such a fun library.

## Installation

If [available in Hex](https://hex.pm/packages/ex_purple_tiger), the package can be installed
by adding `ex_purple_tiger` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:ex_purple_tiger, "~> 0.1.0"}
  ]
end
```

## Usage Examples

```elixir
iex> ExPurpleTiger.animal_hash("my ugly input string")
{:ok, "rapid grey rattlesnake"}

iex> ExPurpleTiger.animal_hash("my ugly input string", style: :uppercase)
{:ok, "RAPID GREY RATTLESNAKE"}

iex> ExPurpleTiger.animal_hash("my ugly input string", separator: "-", style: :titlecase)
{:ok, "Rapid-Grey-Rattlesnake"}
```

## Running tests

Clone the repo and fetch its dependencies:

    $ git clone https://github.com/codeadict/ex_purple_tiger.git
    $ cd ex_purple_tiger
    $ mix deps.get
    $ mix test

## Copyright and License

The source code is under the Apache 2 License.

Copyright (c) 2019 Dairon Medina Caro

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at [http://www.apache.org/licenses/LICENSE-2.0](http://www.apache.org/licenses/LICENSE-2.0)

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.
