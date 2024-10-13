SHELL := /bin/bash
PHONY: build_container run_container connect_container stop_container remove_container create_project install_db install_qa see_doc

build_container:
  docker build -t php-apache-img .
run_container:
  docker run -it -d -v .:/var/www -p 8123:80 --name phpapache php-apache-img
connect_container:
  docker exec -it phpapache bash
stop_container:
  docker container stop phpapache  
remove_container:
  docker container remove phpapache

# Create a new Symfony project.
create_project:
  bash scripts/create_prj.sh
# Install Doctrine & forms.
install_db:
  bash scripts/db_install.sh
# Install Quality tests.
install_qa:
  bash scripts/qa_install.sh
see_doc:
  @cat Readme.md
