## How to run

Don't forget to put your app files in folder "app".

```
git clone https://github.com/vladbuk/docker-php-apache.git .
mkdir app
docker build -t inventory .
docker run -d --name inventory -v $(pwd)/app:/var/www/html -p 80:80 inventory:latest
```
Then open in the browser [localhost](http://localhost)
