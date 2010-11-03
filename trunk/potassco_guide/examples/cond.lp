person(jane).  person(john).
day(mon).  day(tue).  day(wed).  day(thu).  day(fri).
available(jane) :- not on(fri).
available(john) :- not on(mon), not on(wed).
meet :- available(X) : person(X).
on(X) : day(X) :- meet.
