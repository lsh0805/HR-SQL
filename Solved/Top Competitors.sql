/*
Enter your query here.
*/
select a.hacker_id, name from Hackers a
inner join Submissions b on a.hacker_id = b.hacker_id
inner join Challenges c on b.challenge_id = c.challenge_id
inner join Difficulty d on c.difficulty_level = d.difficulty_level
where d.score = b.score
group by a.hacker_id, name
having count(a.hacker_id) > 1
order by count(a.hacker_id) desc, a.hacker_id;