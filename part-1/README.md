DevOps With Docker
==================

Here you can finds all my solutions of DevOps with Docker course maintained
by the Computer Science's Departament of the Helsinki's University.

The whole course consists of three modules: part 1, part 2 and part 3. Each
of these modules have a bunch of exercises, i did decide to organize my solutions on
the following manner: (dir)part(number)->(dir)exercise(number)->exercise-files, so you
can skim through it easily.

Some parts have a guide on how to run the container, because the course asks for it, and
you can find those parts in this README file.

That's all.

Part 1; Exercise 1.15
=====================

Who is Ada is a simple docker image that will spit a HTML wikipedia page on Ada Lovelace.

Here are the steps to use it properly:

1. Be sure that you have Docker installed in your local machine
2. Paste that command in your shell: 'docker pull finrails/who-is-ada' (without quotes, please)
3. If you've pulled the image from the Docker Hub repository, you can run: 'docker run who-is-ada'
4. If everything goes right, you will see a bunch of nosense text on your screen, that is just HTML

That's all, simple as hydrogen.
