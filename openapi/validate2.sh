
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in  ../fsh-generated/resources/Create*AllergyIntolerance*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.MwsAllergyIntolerance  -e ${FILE} ./HipFhirMwsOpenApi.yaml
done	

#FHIR validator
