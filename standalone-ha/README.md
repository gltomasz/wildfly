Load balancer is exposed on localhost on port 80.
To test run test.sh or curl command `curl -w "\n" localhost/lb-test-app/getip`.
The output should be something like this:
```
hostname/ipaddress
783bcdfa5304/172.17.0.3
7b9fd77edc38/172.17.0.4
783bcdfa5304/172.17.0.3
7b9fd77edc38/172.17.0.4
```
