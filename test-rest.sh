#!/bin/bash

echo "Testing REST GetAllCountries:"
curl -X GET http://localhost:8080/api/countries
