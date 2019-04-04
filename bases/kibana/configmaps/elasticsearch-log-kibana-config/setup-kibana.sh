#!/bin/sh
# Perform configuration of kibana via the REST API

# Configure default_field
curl 'http://localhost:5601/api/kibana/settings' \
-H 'content-type: application/json' \
-H 'kbn-xsrf: true' \
--data-binary '{"changes":{"query:queryString:options":"{ \"analyze_wildcard\": true, \"default_field\": \"log\" }"}}'