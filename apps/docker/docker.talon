mode: user.commandline
-
run dock:
  insert("docker ")
  #avoid polluting one word commands
dock list:
  insert("docker ps")
dock list previous:
  insert("docker ps -a")
dock list previous ids:
  insert("docker ps -aq")
dock list last:
  insert("docker -l")
dock list last id:
  insert("docker ps -ql")
dock remove:
  insert("docker rm ")
dock remove all:
  insert("docker rm $(docker ps -aq)")
dock image:
  insert("docker images ")
dock image list:
  insert("docker images -q")
dock image remove:
  insert("docker rmi ")
dock image force remove:
  insert("docker rmi -f ")
dock kill:
  insert("docker kill ")
dock edit:
  insert("nvim Dockerfile")
dock build:
  insert("docker build -t ")
dock pull:
  insert("docker pull ")
dock run:
  insert("docker run ")
dock image remove all:
  insert("docker rmi $(docker images)")
dock compose up:
  insert("docker-compose up -d")
dock compose down:
  insert("docker-compose down")



