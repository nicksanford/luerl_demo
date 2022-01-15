defmodule LuerlDemo do
  def run() do
    st = :luerl.init()
    {:ok, form, lua} = :luerl.loadfile('./test.lua', st)
    :luerl.eval(form, lua)
  end

  def run_sandbox() do
    st = :luerl_sandbox.init()
    max_reductions = 1000
    unlimited_reductions = 0
    timeout_ms = 1000
    process_flags = [priority: :low]

    {:error, {:reductions, 4000}} =
      :luerl_sandbox.run('a={}; for i=1,1000000 do a[i] = 5 end', st, max_reductions)

    {:error, :timeout} =
      :luerl_sandbox.run(
        'a={}; for i=1,1000000 do a[i] = 5 end',
        st,
        unlimited_reductions,
        process_flags,
        timeout_ms
      )

    {[], _st} =
      :luerl_sandbox.run(
        'a={}; for i=1,10 do a[i] = 5 end',
        st,
        unlimited_reductions,
        process_flags,
        10000
      )

    :ok
  end
end
