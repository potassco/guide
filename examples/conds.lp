day(sat).  day(sun).
weekend(sun).
workday(X) :- day(X), X != sat, X != sun.
workdays :- workday(X) : day(X) : not weekend(X) : X != sat.
