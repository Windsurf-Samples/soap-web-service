#!/bin/bash

echo "Testing SOAP GetAllCountries:"
curl -X POST http://localhost:8080/ws \
  -H "Content-Type: text/xml;charset=UTF-8" \
  -H "SOAPAction: \"\"" \
  -d '<soapenv:Envelope xmlns:soapenv="http://schemas.xmlsoap.org/soap/envelope/"
                  xmlns:mys="http://www.ensa.ma/MySoapService">
   <soapenv:Header/>
   <soapenv:Body>
      <mys:getAllCountriesRequest/>
   </soapenv:Body>
</soapenv:Envelope>'
