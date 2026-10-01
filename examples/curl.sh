#!/bin/sh
# Call the server without any MCP client: plain JSON-RPC over HTTP.
# The server is stateless, so tools/call works without a prior initialize.

curl -s https://clino.ch/mcp \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":1,"method":"tools/list"}'

curl -s https://clino.ch/mcp \
  -H 'Content-Type: application/json' \
  -H 'Accept: application/json, text/event-stream' \
  -d '{"jsonrpc":"2.0","id":2,"method":"tools/call","params":{"name":"get_minimum_wage","arguments":{"canton":"BS","hours_per_week":8,"language":"en"}}}'
