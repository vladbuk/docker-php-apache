## How to run
```
docker build -t inventory .
docker run -d --name inventory -v $(pwd)/app:/var/www/html -p 80:80 inventory:latest
```
Then open in browser [localhost](http://localhost)
