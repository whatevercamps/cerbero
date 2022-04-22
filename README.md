# Torre Schemas

- Any schemas merged into main **need to be validated** by [igluctl](https://github.com/snowplow-incubator/igluctl).
- Schemas can be validated locally using SnowcatCloud's [Chrome Extension](https://chrome.google.com/webstore/detail/snowplow-analytics-debugg/jbnlcgeengmijcghameodeaenefieedm?hl=en-US). See [functionality docs](https://docs.snowcatcloud.com/snowplow-chrome-extension/how-to-use).
- Any new schemas need a PR and approval.
- Before deploying a new schema with SnowcatCloud to production the table MUST be already created in Redshift with the right permissions.

## Validate Schemas

Validate all schemas

```
igluctl lint schemas/
```

Validate a schema

```
igluctl lint schemas/com.torrelabs/ABTestContext/
```

Generate JSON paths and SQL permissions to SnowcatCloud

```
igluctl static generate --with-json-paths ./schemas/com.torrelabs/ABTestContext --set-owner storageloadersnowcat
```

## Schemas

1. Install Snowplow Micro
   In the iglu.json add your local server for this repo python -m http.server --cgi 8000

   {
   "name": "Torrelabs",
   "priority": 0,
   "vendorPrefixes": [ "com.torrelabs" ],
   "connection": {
   "http": {
   "uri": "http://192.168.0.181/"
   }
   }
   },

2. Install Postman
3. Test sending hits to Snowplow micro
   xxxxxxxx
