#!/usr/bin/perl -w
# S.R. Lines 

sub flatten { map { ref $_ eq 'ARRAY' ? flatten(@$_) : $_ } @_ }

print join ', ' => flatten 1, 2, [3, 4], [5, [6, 7, [8, "foosball", 9] ], 10], "\n";

exit;

