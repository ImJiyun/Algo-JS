-- 코드를 입력하세요
SELECT
    APNT_NO,
    PT_NAME,
    a.PT_NO,
    a.MCDP_CD,
    DR_NAME,
    APNT_YMD
FROM
    APPOINTMENT a
JOIN 
    PATIENT p
ON 
    a.PT_NO = p.PT_NO
JOIN 
    DOCTOR d
ON 
    a.MDDR_ID = d.DR_ID
WHERE
    d.MCDP_CD = 'CS' AND DATE_FORMAT(APNT_YMD, '%Y-%m-%d') = '2022-04-13' AND APNT_CNCL_YN = 'N'
ORDER BY
    APNT_YMD