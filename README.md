# docker_gatsby_resume
## Faire extraire  docker_gatsby_resume.rar , puis mettez le dossier sous C:

## Ouvrir cmd dans le dossier docker_gatsby_resume

## Pour création de l’image nommée img1   d’après Dockerfile
docker build -t img1 .

## Pour création du conteneur 
docker run -p 8000:8000 img1

## Ouvrir votre navigateur et tapper: localhohst:8000, vous obtenez le cv originale


## Créer un volume de type bind mount et le faire stocker vos données personnelles à modifier et votre photo personnelle et le faire lier avec img1 

docker run -p 8000:8000 --name bind_mount --mount type=bind,source="C:\docker_gattsby_resume\profile.json",target=/app/malak_resume/data/profile.json --mount type=bind,source="C:\docker_gattsby_resume\profile.jpg",target=/app/malak_resume/static/profile.jpg img1 

## Pour création de l’image  nommée img2   d’après Dockerfile2
docker build -t img2 -f Dockerfile2 .

## Mettre le résultat de build gatsby le dossier ‘public’ dans un volume nommé build_vol
docker run -d --name build_vol -v vol_pub:/app/malak_resume/public img2


## Pour création de l’image nommée img3  d’après Dockerfile3
docker build -t img3 .

## Pour création du conteneur 
docker run -p 8000:8000 img3

