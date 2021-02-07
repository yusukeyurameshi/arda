SELECT 
	to_char(sysdate,'dd-mon-yy') COLLECTION_DATE,
	version DATABASE_VERSION,
	archiver archive
from
	v$instance;
