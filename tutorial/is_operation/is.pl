/*
< Prolog Shell Query > 

= 연산자 : 대입연산자로 볼 수 있고, 객체 비교로도 볼 수 있다.
=질의어는 '대입 혹은 객체비교'이다.



is연산자 : 대입 또는 산술연산이 포함된 질의를 하기 위해서 사용된다

is연산자는 산술연산이 포함된 질의도 가능하다. 또한 변수에 대입하는것도 가능하다.

주의사항으로는 왼쪽에 수식이 들어갈 수 없으며, 인스턴스화 되지 않은 변수가 우측에 있으면 에러가날 수 있다.

*/

X is 3 + 2. % expression on right side of 'is'

3 + 2 is X. % expression on left side of 'is' -> Error

X = 3 + 2. % Instantiate variable X to value 3 + 2

3 + 2 = X.  