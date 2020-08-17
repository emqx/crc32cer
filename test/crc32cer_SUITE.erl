-module(crc32cer_SUITE).

-compile(export_all).
-compile(nowarn_export_all).

-include_lib("eunit/include/eunit.hrl").

all() ->
    [t_run_1].

t_run_1(_) ->
    ?assertEqual(1094021510, crc32cer:nif(<<"123456">>)).
