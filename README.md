# fhir-pseudonymize-operations

## Development

Install <https://marketplace.visualstudio.com/items?itemName=ms-vscode.live-server>.

```sh
docker run --rm -it -v $PWD/:/opt/ig-build-tools/workspace ghcr.io/miracum/ig-build-tools:v2.0.60
cd PseudonymizationIG/
sushi .
java -jar /usr/local/bin/publisher.jar -ig ig.ini
```

Right-click on `PseudonymizationIG/output/index.html` -> `Show Preview`
