SELECT a.id, b.age, a.coins_needed, a.power
FROM Wands a
inner join Wands_Property b on a.code = b.code
where b.is_evil = false 
and a.coins_needed =
(
    SELECT min(a1.coins_needed)
    FROM Wands a1
    inner join Wands_Property b1 on a1.code = b1.code
    where b1.is_evil = false
    and b.age = b1.age
    and a.power = a1.power
)
order by a.power desc, b.age desc;