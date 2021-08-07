-- Using convencional range with initial and final value
explain analyze select * from ranges where 9989001 BETWEEN ranges.initial AND ranges.final

-- Using int4range field
explain analyze select * from ranges where 9989001::INTEGER <@ ranges.int_range
