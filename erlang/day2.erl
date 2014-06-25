-module(day2).
-export([getDictionary/2]).
-export([shoppingListPrice/1]).
-include_lib("eunit/include/eunit.hrl").

%List of keyword- tuples.
getDictionary(List, Keyword) -> [{Key, Value} || {Key, Value} <- List, Key =:= Keyword].

% A shopping list that looks like [{item quantity price}, ...].
shoppingListPrice(ShoppingList) -> [{Item, Quantity * Price} || {Item, Quantity, Price} <- ShoppingList].

selective_test() -> 
	[{"Erlang", "a functional language"}] = getDictionary([{"Erlang", "a functional language"}], "Erlang").
	
shoppingListPrice_test() -> 
	[{"Cheese",553.89},{"Bread",530.0}] = shoppingListPrice([{"Cheese", 4.99, 111}, {"Bread", 2.12, 250}]).