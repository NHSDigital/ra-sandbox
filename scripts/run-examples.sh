#!/bin/bash

# TODO Document how to organise the examples and queries in the IG
# Probably makes more sense just to describe the queries and add output in statically, rather trying to combine integrations testing
# into the build of the IG.  See if it serves as a useful example... 

SERVER_BASE="http://localhost:8080/fhir/"
HEADERS="Content-type:application/fhir+json;fhirVersion=4.0"

# TODO - Make the script runnable from any path
SCRIPT_ROOT=$( cd "$(dirname "${BASH_SOURCE[0]}")" ; pwd -P );

# Make resources folder if it doesn't already exist
mkdir -p ./input/resources

for EXAMPLE in ./input/fsh/examples/*; do

  # Get the filename from the path
  EXAMPLE=$(echo $EXAMPLE | awk -F '/' '{print $5}' | awk -F '.' '{print $1}');

  # This relies on SUSHI having been ran to generate JSON representations of the resources.
  GENERATED=$(echo ./fsh-generated/resources/*$EXAMPLE*);

  # Sushi will prepend the name of the Resource, which will be used in the server calls.
  RESOURCE_NAME=$(echo $GENERATED | awk -F '/' '{print $4}' | awk -F '-' '{print $1}');

  # Assumption here that Bundle examples will be transactions, guessing it'll fail if not...
  # Set RESOURCE_NAME to empty string so post is made to the base server url.
  if [ "$RESOURCE_NAME" == "Bundle" ]; then
    RESOURCE_NAME=""
  fi;
  
  # Post the resource
  curl -X POST -H $HEADERS -d @${GENERATED} $SERVER_BASE$RESOURCE_NAME;

  for QUERY_FILE in ./input/queries/$EXAMPLE*; do
    # Check if none found and skip loop, otherwise will loop on unexpanded path, todo, write this in a real language.
    if [ "${QUERY_FILE%.*}" = "" ]; then
      continue
    fi;

    # Filename of query (minus extension) must match the filename of the example posted.
    QUERY=$(cat ${QUERY_FILE%.*}*);

    # Strip the path
    QUERY_FILE=$(echo $QUERY_FILE | awk -F '/' '{print $4}');

    # Run corresponding query, change the ID of the bundle to something readable and output to resources in input to be included in IG build
    curl $SERVER_BASE$QUERY | jq '.id = "QUERY-OUTPUT--'${QUERY_FILE%.*}'"' > ./input/resources/QUERY-OUTPUT--${QUERY_FILE%.*}.json
  done;

done;

# Do all other READ queries
for QUERY_FILE in ./input/queries/READ*; do
  # Filename of query (minus extension) must match the filename of the example posted.
  QUERY=$(cat ${QUERY_FILE%.*}*);

  # Strip the path
  QUERY_FILE=$(echo $QUERY_FILE | awk -F '/' '{print $4}');

  # Run corresponding query, change the ID of the bundle to something readable and output to resources in input to be included in IG build
  curl $SERVER_BASE$QUERY | jq '.id = "QUERY-OUTPUT--'${QUERY_FILE%.*}'"' > ./input/resources/QUERY-OUTPUT--${QUERY_FILE%.*}.json
done;

# Do all other DELETE queries
for QUERY_FILE in ./input/queries/DELETE*; do
  # Filename of query (minus extension) must match the filename of the example posted.
  QUERY=$(cat ${QUERY_FILE%.*}*);

  # Strip the path
  QUERY_FILE=$(echo $QUERY_FILE | awk -F '/' '{print $4}');

  # Run corresponding query, change the ID of the bundle to something readable and output to resources in input to be included in IG build
  curl -X DELETE $SERVER_BASE$QUERY | jq '.id = "QUERY-OUTPUT--'${QUERY_FILE%.*}'"' > ./input/resources/QUERY-OUTPUT--${QUERY_FILE%.*}.json
done;