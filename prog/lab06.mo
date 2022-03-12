model lab06
    parameter Real a = 0.01; // коэффициент заболеваемости
    parameter Real b = 0.02; //коэффициент выздоровления
    parameter Real N = 10800; // общая численность популяции
    parameter Real I0 = 208; // количество инфицированных особей в начальный момент времени
    parameter Real S0 = N - I0 - R0;  // количество восприимчивых к болезни особей в начальный момент времени
    parameter Real R0 = 41; // количество здоровых особей с иммунитетом в начальный момент времени

    Real S(start=S0); // количество инфицированных особей в начальный момент времени
    Real I(start=I0); // количество восприимчивых к болезни особей в начальный момент времени
    Real R(start=R0);  // количество здоровых особей с иммунитетом в начальный момент времени
  equation
    // случай, когда I(0)<=I*
    der(S) = 0;
    der(I) = -b*I;
    der(R) = b*I;
    /* случай, когда I(0)>I*
    der(S) = -a*S;
    der(I) = a*S-b*I;
    der(R) = b*I;*/
  end lab06;