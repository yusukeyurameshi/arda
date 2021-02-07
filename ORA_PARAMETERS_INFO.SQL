SELECT substr(name,0,512) name
	,NVL(SUBSTR(value,0,512) , 'null value') value 
  FROM  v$parameter;
