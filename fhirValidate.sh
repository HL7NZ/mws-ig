#!/bin/bash   
#run from project root
set -x #echo on

#create a bundle for the results
cd ./output
rm -r ./temp
mkdir ./temp

unzip ./full-ig.zip site/package.tgz

echo validating AllergyIntollerance examples
cp ../fsh-generated/resources/AllergyIntolerance*.json ./temp
java -jar ~/validator_cli.jar ./temp  -ig ./site/package.tgz -profile http://hl7.org.nz/fhir/StructureDefinition/MwsAllergyIntolerance -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation_MwsAllergyIntolerance.html
#rm ./*temp/*.json


echo validation MedicationDispense examples

cp ../fsh-generated/resources/MedicationDispense*.json ./temp
java -jar ~/validator_cli.jar ./temp -version 4.0.1 -ig ./site/package.tgz -bundle MedicationDispense:0 http://hl7.org.nz/fhir/StructureDefinition/MwsMedicationDispense -proxy WebProxy-80fef376c00ea74f.elb.ap-southeast-2.amazonaws.com:3128 -html-output ./validation.html
