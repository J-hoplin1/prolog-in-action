
% Facts
cat(fubby).
black_spots(fubby).
dog(figaro).
white_spots(figaro).

% Rules
owns(mary,Pet) :- cat(Pet),black_spots(Pet).
loves(Who,What) :- owns(Who,What).