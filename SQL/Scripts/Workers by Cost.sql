SELECT WK.Room, WK.Name, PR.ProfessionName, EN.EnduranceName, WK.Cost
FROM dbo.Worker WK
INNER JOIN dbo.Profession PR ON PR.Profession = WK.Profession
INNER JOIN Endurance EN ON EN.Endurance = WK.Endurance
WHERE WK.Cost != 0
AND PR.ProfessionName != "Businessman"
ORDER BY WK.Cost;
/*ORDER BY WK.Room;*/