# Weather Realtime Check

This app checks the realtime weather for the queried city, using its CEP.
<b>Usage:</b> Query the route with the desired CEP corresponding to the city desired by:
`[base_url]/weather?cep=11111-111`

The query param needs to be 8 digits long, and may or not have a CEP mask.
Anything other than the requested format will return an error.
