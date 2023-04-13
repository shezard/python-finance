#!/bin/bash

tickers="AAPL MSFT TSLA"

for ticker in $tickers; do
    file="data/$ticker.csv"
    if [ ! -f $file ]; then
        echo "Getting $ticker ..."
        curl "https://query1.finance.yahoo.com/v7/finance/download/$ticker?period1=1480636740&period2=1681386406&interval=1d&events=history&includeAdjustedClose=true" -H 'User-Agent: Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:109.0) Gecko/20100101 Firefox/112.0' -H 'Accept: text/html,application/xhtml+xml,application/xml;q=0.9,image/avif,image/webp,*/*;q=0.8' -H 'Accept-Language: fr,fr-FR;q=0.8,en-US;q=0.5,en;q=0.3' -H 'Accept-Encoding: gzip, deflate, br' -H 'Connection: keep-alive' -H 'Cookie: A3=d=AQABBJ8iNGQCEGD-RGWtqR6lamy36hO62VUFEgABCAFsNWRnZOUzb2UB9qMAAAcImyI0ZH_sCD0&S=AQAAAlPxQZJvNnOUkEC6GqG-HSY; GUC=AQABCAFkNWxkZ0IcWAQ0&s=AQAAAOvt0gKg&g=ZDQiqQ; A1=d=AQABBJ8iNGQCEGD-RGWtqR6lamy36hO62VUFEgABCAFsNWRnZOUzb2UB9qMAAAcImyI0ZH_sCD0&S=AQAAAlPxQZJvNnOUkEC6GqG-HSY; cmp=t=1681138476&j=1&u=1---&v=77; thamba=1; PRF=newChartbetateaser%3D0%252C1682348079612%26t%3DTRKA%252BQQQ%252BGFAI%252BPXD%252BTSLA; A1S=d=AQABBJ8iNGQCEGD-RGWtqR6lamy36hO62VUFEgABCAFsNWRnZOUzb2UB9qMAAAcImyI0ZH_sCD0&S=AQAAAlPxQZJvNnOUkEC6GqG-HSY&j=GDPR' -H 'Upgrade-Insecure-Requests: 1' -H 'Sec-Fetch-Dest: document' -H 'Sec-Fetch-Mode: navigate' -H 'Sec-Fetch-Site: none' -H 'Sec-Fetch-User: ?1' -H 'TE: trailers' > "data/$ticker.csv"
        sleep 5
    fi
done
