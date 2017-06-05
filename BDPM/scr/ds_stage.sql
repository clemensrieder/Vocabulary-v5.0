--ds_1 for drugs and ds_pack_1 for packs
insert into ds_stage (DRUG_CONCEPT_CODE,INGREDIENT_CONCEPT_CODE,BOX_SIZE,AMOUNT_VALUE,AMOUNT_UNIT,NUMERATOR_VALUE,NUMERATOR_UNIT,DENOMINATOR_VALUE,DENOMINATOR_UNIT)
select distinct cast (CONCEPT_CODE as varchar (200)) as CONCEPT_CODE,INGREDIENT_CODE,BOX_SIZE,AMOUNT_VALUE,AMOUNT_UNIT,NUMERATOR_VALUE,NUMERATOR_UNIT,DENOMINATOR_VALUE,DENOMINATOR_UNIT from ds_1 
WHERE concept_code not in (select concept_code from PACK_CONT_1)
union 
select distinct PACK_COMPONENT_CODE,INGREDIENT_CODE,BOX_SIZE,AMOUNT_VALUE,AMOUNT_UNIT,NUMERATOR_VALUE,NUMERATOR_UNIT,DENOMINATOR_VALUE,DENOMINATOR_UNIT from ds_pack_1
;
--sum up the same ingredients manualy
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '3087355' AND   INGREDIENT_CONCEPT_CODE = '5356' AND   BOX_SIZE = 20 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 1.4 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 10 AND   DENOMINATOR_UNIT = 'g';
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '3200509' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 1 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 5 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '3205777' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 1 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 3 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '3698389' AND   INGREDIENT_CONCEPT_CODE = '563' AND   BOX_SIZE = 10 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 0.695 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 500 AND   DENOMINATOR_UNIT = 'ml';
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '3698426' AND   INGREDIENT_CONCEPT_CODE = '563' AND   BOX_SIZE = 10 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 1.2 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 500 AND   DENOMINATOR_UNIT = 'ml';
DELETE FROM DS_STAGE WHERE  DRUG_CONCEPT_CODE = '5536774' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 25 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 3 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 2.5 WHERE  DRUG_CONCEPT_CODE = '3087355' AND   INGREDIENT_CONCEPT_CODE = '5356' AND   BOX_SIZE = 20 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 1.1 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 10 AND   DENOMINATOR_UNIT = 'g';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 7 WHERE  DRUG_CONCEPT_CODE = '3200509' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 1 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 2 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 5.7 WHERE  DRUG_CONCEPT_CODE = '3205777' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 1 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 2.7 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 1.715 WHERE  DRUG_CONCEPT_CODE = '3698389' AND   INGREDIENT_CONCEPT_CODE = '563' AND   BOX_SIZE = 10 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 1.015 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 500 AND   DENOMINATOR_UNIT = 'ml';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 2.795 WHERE  DRUG_CONCEPT_CODE = '3698426' AND   INGREDIENT_CONCEPT_CODE = '563' AND   BOX_SIZE = 10 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 1.595 AND   NUMERATOR_UNIT = 'g' AND   DENOMINATOR_VALUE = 500 AND   DENOMINATOR_UNIT = 'ml';
UPDATE DS_STAGE   SET NUMERATOR_VALUE = 5.7 WHERE  DRUG_CONCEPT_CODE = '5536774' AND   INGREDIENT_CONCEPT_CODE = '1261' AND   BOX_SIZE = 25 AND   AMOUNT_VALUE IS NULL AND   AMOUNT_UNIT IS NULL AND   NUMERATOR_VALUE = 2.7 AND   NUMERATOR_UNIT = 'mg' AND   DENOMINATOR_VALUE = 1 AND   DENOMINATOR_UNIT = 'ml';
;
DELETE FROM DS_STAGE WHERE DRUG_CONCEPT_CODE = '3284943' AND   INGREDIENT_CONCEPT_CODE = '29848' AND   BOX_SIZE = 5 AND   AMOUNT_VALUE = 0.23 AND   AMOUNT_UNIT = 'mg';
DELETE FROM DS_STAGE WHERE DRUG_CONCEPT_CODE = '3354164' AND   INGREDIENT_CONCEPT_CODE = '1023' AND   BOX_SIZE = 24 AND   AMOUNT_VALUE = 300 AND   AMOUNT_UNIT = 'mg';
DELETE FROM DS_STAGE WHERE DRUG_CONCEPT_CODE = '3404695'  AND   INGREDIENT_CONCEPT_CODE = '2202'  AND   BOX_SIZE = 24  AND   AMOUNT_VALUE = 62.5  AND   AMOUNT_UNIT = 'mg';
DELETE FROM DS_STAGE WHERE DRUG_CONCEPT_CODE = '5758486'  AND   INGREDIENT_CONCEPT_CODE = '29848'  AND   BOX_SIZE = 30  AND   AMOUNT_VALUE = 0.23  AND   AMOUNT_UNIT = 'mg';
DELETE FROM DS_STAGE WHERE DRUG_CONCEPT_CODE = '3584846'  AND   INGREDIENT_CONCEPT_CODE = '1023'  AND   BOX_SIZE = 30  AND   AMOUNT_VALUE = 500  AND   AMOUNT_UNIT = 'mg';
UPDATE DS_STAGE   SET AMOUNT_VALUE = 1.53 WHERE DRUG_CONCEPT_CODE = '3284943'  AND   INGREDIENT_CONCEPT_CODE = '29848'  AND   BOX_SIZE = 5  AND   AMOUNT_VALUE = 1.31  AND   AMOUNT_UNIT = 'mg';
UPDATE DS_STAGE   SET AMOUNT_VALUE = 500 WHERE DRUG_CONCEPT_CODE = '3354164'  AND   INGREDIENT_CONCEPT_CODE = '1023'  AND   BOX_SIZE = 24  AND   AMOUNT_VALUE = 200  AND   AMOUNT_UNIT = 'mg';
UPDATE DS_STAGE   SET AMOUNT_VALUE = 250 WHERE DRUG_CONCEPT_CODE = '3404695'  AND   INGREDIENT_CONCEPT_CODE = '2202'  AND   BOX_SIZE = 24  AND   AMOUNT_VALUE = 187.5  AND   AMOUNT_UNIT = 'mg';
UPDATE DS_STAGE   SET AMOUNT_VALUE = 700 WHERE DRUG_CONCEPT_CODE = '3584846'  AND   INGREDIENT_CONCEPT_CODE = '1023'  AND   BOX_SIZE = 30  AND   AMOUNT_VALUE = 200  AND   AMOUNT_UNIT = 'mg';
UPDATE DS_STAGE   SET AMOUNT_VALUE = 1.53 WHERE DRUG_CONCEPT_CODE = '5758486'  AND   INGREDIENT_CONCEPT_CODE = '29848'  AND   BOX_SIZE = 30  AND   AMOUNT_VALUE = 1.31  AND   AMOUNT_UNIT = 'mg';

--sometimes denominator is just a sum of components, so in this case we need to ignore denominators
update ds_stage 
 set 
amount_value = numerator_value,
amount_unit = numerator_unit,
numerator_value = '',
numerator_unit ='',
denominator_value ='',
denominator_unit =''
where 
drug_concept_code in (
select a.drug_concept_code from ds_stage a join 
(
select drug_concept_code, sum (numerator_value) as summ, NUMERATOR_UNIT from ds_stage group by drug_concept_code, denominator_value , denominator_unit, NUMERATOR_UNIT
) b on a.drug_concept_code = b.drug_concept_code and  summ / denominator_value < 1.2 and summ / denominator_value > 0.8
and a.numerator_unit = b.NUMERATOR_UNIT 
where a.NUMERATOR_UNIT = a.DENOMINATOR_UNIT
)
;
--drug with no din7
insert into ds_stage (DRUG_CONCEPT_CODE,INGREDIENT_CONCEPT_CODE,NUMERATOR_VALUE,NUMERATOR_UNIT,DENOMINATOR_VALUE,DENOMINATOR_UNIT)
VALUES (60253264,612,'2.5','IU','1','ml');


update ds_stage
set numerator_value=numerator_value*10*DENOMINATOR_VALUE,
    numerator_unit='mg'
where NUMERATOR_UNIT='%';
update ds_stage 
set DENOMINATOR_VALUE=null,
    DENOMINATOR_UNIT=null
where DENOMINATOR_UNIT is not null and NUMERATOR_UNIT is null;


UPDATE DS_STAGE
   SET DENOMINATOR_VALUE = 0.5,
       DENOMINATOR_UNIT = 'ml'
WHERE DRUG_CONCEPT_CODE = '3293617'
AND   INGREDIENT_CONCEPT_CODE = '5717'
AND   BOX_SIZE = 1
AND   AMOUNT_VALUE IS NULL
AND   AMOUNT_UNIT IS NULL
AND   NUMERATOR_VALUE IS NULL
AND   NUMERATOR_UNIT IS NULL
AND   DENOMINATOR_VALUE IS NULL
AND   DENOMINATOR_UNIT IS NULL;