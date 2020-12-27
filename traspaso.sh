#!/bin/bash

echo "Bienvenido al actualizador de git de Juan Luis Millán."
echo "Introduce los cambios realizados(commit):"; read input

#Actualizamos los ficheros modificados. La opción incremental solo generará un documento o página si se modifica,es decir, solo afectara a las páginas nuevas o modificadas
bundle exec jekyll build
#--incremental

#Copiamos los html creados en nuestro _site y los movemos a nuestro repositorio que esta enlazado a netlify
cp -r /home/juanlu/GitHub/Blog-QuestTIC/_site/* /home/juanlu/GitHub/QuestTIC/

#Accedemos al repostirio donde están creadas nuestros html.
cd /home/juanlu/GitHub/QuestTIC/

#Agreamos los cambios realizados con git,hacemos el commit y lo subimos con un push.
git add *

git commit -am "$input"
git push
