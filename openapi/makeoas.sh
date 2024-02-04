# first step would be to get the openapi common oas file from hip-fhir-common mvn package
# we are going to temporarily copy it to local openapi folder

cp openapi/HipFhirCommonOpenApi.yaml openapiHipFhirMwsOpenApi.yaml
newpath=$(< ./openapi/HipFhirMwsPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirMwsOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirMwsOpenApi.yaml 

zip -u ./input/extra/HipFhirMwsOpenApi.zip ./openapi/HipFhirMwsOpenApi.yaml 

