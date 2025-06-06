-- 코드를 입력하세요
SELECT
    AO.ANIMAL_ID
    , AO.ANIMAL_TYPE
    , AO.NAME
FROM
    ANIMAL_INS AI
    INNER JOIN ANIMAL_OUTS AO
        ON AI.ANIMAL_ID = AO.ANIMAL_ID
WHERE AI.SEX_UPON_INTAKE LIKE '%Intact%'
    AND (
        AO.SEX_UPON_OUTCOME LIKE '%Spayed%'
        OR
        AO.SEX_UPON_OUTCOME LIKE '%Neutered%'
        )
ORDER BY
    AO.ANIMAL_ID