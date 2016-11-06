%% Feel free to use, reuse and abuse the code in this file.

%% @doc Hello world handler.
-module(toppage_handler).

-export([init/2]).

init(Req0, State) ->
	% I thought State will be [{foo, 1}] when client sends a request at second time
	io:fwrite("~p~n", [State]),
	Req = cowboy_req:reply(200, #{
		<<"content-type">> => <<"text/plain">>
	}, <<"Hello world!">>, Req0),
	NewState = [{foo, 1}],
	{ok, Req, NewState}.
