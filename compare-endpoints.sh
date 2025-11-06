#!/bin/bash

REST_RESPONSE=$(curl -s http://localhost:8080/api/countries-available)

SOAP_RESPONSE=$(curl -s -X POST http://localhost:8080/ws \
  -H "Content-Type: text/xml;charset=UTF-8" \
  -H "SOAPAction: \"\"" \
  -d '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                  xmlns:mys="http://www.ensa.ma/MySoapService">
   <soapenv:Header/>
   <soapenv:Body>
      <mys:getAllCountriesRequest/>
   </soapenv:Body>
</soapenv:Envelope>')

echo "REST Response:"
echo "$REST_RESPONSE" | jq '.'

echo -e "\n\nSOAP Response:"
echo "$SOAP_RESPONSE" | xmllint --format -

echo -e "\n\nBoth endpoints should return the same three countries: France, Morocco, and Poland"
