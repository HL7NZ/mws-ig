
#run from the openapi directory


#!/bin/bash
#OpenApi validation
for FILE in  ../fsh-generated/resources/Patient-*.json
do
	openapi-examples-validator --no-additional-properties -s $.components.schemas.AllergyIntolerance  -e ${FILE} ./HipFhirMwsOpenApi.yaml.yaml
done	

#FHIR validator
