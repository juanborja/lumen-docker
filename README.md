
- composer install
- docker build . -t lumen-d
- docker run -i -t lumen-d
- docker excec -i -t nombre_contenedor /bin/bash

#Verision 2

- docker run -d --name masha -p 9001:80 -v /home/juan/Proyectos/docker/lumen-docker:/var/www lumen-d
- Ahora en localhost:9000/public esta corriendo la aplicacion


