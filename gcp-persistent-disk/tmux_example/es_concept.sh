time for file in $(cat ${input}); do gsutil cat $file | gunzip | elasticsearch_loader --es-host "http://$HOST.$HOST.il4.europe-west1.lb.open-targets-library.internal:9200" --with-retry --bulk-size 10000 --index pubmed-19-concept --type concept json --json-lines - ; done
