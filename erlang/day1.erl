-module(day1).
-export([numberOfWords/1]).
-export([startCount/1]).
-export([selectivePrint/1]).
-include_lib("eunit/include/eunit.hrl").

%Count words in a string with recursion.
count([]) -> 0;
count([_ | Tail]) -> 1 + count(Tail).

numberOfWords(Sentence) -> count(string:tokens(Sentence, " ")).

%Count to ten with cecursion.
startCount(10) -> 10;
startCount(Value) -> io:format("~p~n", [Value]), startCount(Value + 1).

%Matching selectivly print "success".
selectivePrint(success) -> "success";
selectivePrint({error, Message}) -> io:fwrite("Error: ~s~n", [Message]).

%Tests
count_words_with_three_words_should_return_three_test() -> 3 = numberOfWords("Pas op Test").
count_words_with_zero_words_should_return_zero_test() -> 0 = numberOfWords("").

count_to_ten_from_2_should_return_ten_test() -> 10 = startCount(2).

selective_print_with_success_should_return_success_test() -> "success" = selectivePrint(success).