#!/bin/bash
set -x #echo on

common_version=$( yq '.dependencies."hl7.org.nz.fhir.ig.hip-core".version' ./sushi-config.yaml)
cp "./fhir_packages/hip-fhir-common-$common_version/openapi/HipFhirCommonOpenApi.yaml" ./openapi/HipFhirMwsOpenApi.yaml

#add the MWS paths to the common openapi spec
newpath=$(< ./openapi/HipFhirMwsPaths.yaml)  yq -i '.paths=env(newpath) ' openapi/HipFhirMwsOpenApi.yaml 
newversion=$(yq '.version' ./sushi-config.yaml)   yq -i '.info.version=env(newversion) ' openapi/HipFhirMwsOpenApi.yaml 

zip -u ./input/extra/HipFhirMwsOpenApi.zip ./openapi/HipFhirMwsOpenApi.yaml 

