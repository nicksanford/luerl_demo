# LuerlDemo

This is a personal exploration of how to use [luerl](https://github.com/rvirding/luerl)
to run lua within an elixir application as a sandboxed scripting language.

This just copies some of the [luerl examples](https://github.com/rvirding/luerl/blob/develop/examples/hello/hello_sandbox.erl) into elixir to serve as an easy jumping off point for future projects.

## Install

```
git clone git@github.com:nicksanford/luerl_demo.git
cd luerl_demo
mix do deps.get, deps.compile, compile
```

## Run

```
iex -S mix
iex(1)> LuerlDemo.run_sandbox
:ok
iex(2)> LuerlDemo.run        
233168 
{:ok, [233168]}
```