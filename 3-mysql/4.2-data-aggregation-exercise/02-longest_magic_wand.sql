SELECT
`magic_wand_size`
AS
'longest_magic_wand'
FROM
`wizzard_deposits`
ORDER BY
`longest_magic_wand` DESC
LIMIT 1;