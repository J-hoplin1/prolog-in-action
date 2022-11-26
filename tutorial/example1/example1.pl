% Facts
food(burger). % burger is food
food(sandwich). % sandwich is food
food(pizza). %pizza is food
lunch(sandwich).
dinner(pizza).

% :- 는 만약 ~ 하다면의 의미이다.
% prolog의 연산은 모두 트리 기반이라는 것에 대한 이해가 필요하다.

% Rules
meal(X) :- food(X). % Every foo is meal or anything is a meal if it's food