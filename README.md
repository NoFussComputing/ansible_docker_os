<div align="center" width="100%">


# No Fuss Computing - Ansible Docker Operating System

<br>

![Project Status - Active](https://img.shields.io/badge/Project%20Status-Active-green?logo=gitlab&style=plastic) 

<br>

![Gitlab forks count](https://img.shields.io/badge/dynamic/json?label=Forks&query=%24.forks_count&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F47330754%2F&color=ff782e&logo=gitlab&style=plastic) ![Gitlab stars](https://img.shields.io/badge/dynamic/json?label=Stars&query=%24.star_count&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F47330754%2F&color=ff782e&logo=gitlab&style=plastic) [![Open Issues](https://img.shields.io/badge/dynamic/json?color=ff782e&logo=gitlab&style=plastic&label=Open%20Issues&query=%24.statistics.counts.opened&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F47330754%2Fissues_statistics)](https://gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os/-/issues)


<br>

![GitHub forks](https://img.shields.io/github/forks/NoFussComputing%2fansible_docker_os?logo=github&style=plastic&color=000000&labell=Forks) ![GitHub stars](https://img.shields.io/github/stars/NoFussComputing%2fansible_docker_os?color=000000&logo=github&style=plastic) ![Github Watchers](https://img.shields.io/github/watchers/NoFussComputing%2fansible_docker_os?color=000000&label=Watchers&logo=github&style=plastic)

<br>

This project is hosted on [Gitlab](https://gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os) and has a read-only copy hosted on [Github](https://github.com/NoFussComputing/ansible_docker_os).


----

**Stable Branch**

![Gitlab build status - stable](https://img.shields.io/badge/dynamic/json?color=ff782e&label=Build&query=0.status&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F47330754%2Fpipelines%3Fref%3Dmaster&logo=gitlab&style=plastic) ![branch release version](https://img.shields.io/badge/dynamic/yaml?color=ff782e&logo=gitlab&style=plastic&label=Release&query=%24.commitizen.version&url=https%3A//gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os%2F-%2Fraw%2Fmaster%2F.cz.yaml) 

----

**Development Branch** 

![Gitlab build status - development](https://img.shields.io/badge/dynamic/json?color=ff782e&label=Build&query=0.status&url=https%3A%2F%2Fgitlab.com%2Fapi%2Fv4%2Fprojects%2F47330754%2Fpipelines%3Fref%3Ddevelopment&logo=gitlab&style=plastic) ![branch release version](https://img.shields.io/badge/dynamic/yaml?color=ff782e&logo=gitlab&style=plastic&label=Release&query=%24.commitizen.version&url=https%3A//gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os%2F-%2Fraw%2Fdevelopment%2F.cz.yaml)

----
<br>

</div>

links:

- [Issues](https://gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os/-/issues)

- [Merge Requests (Pull Requests)](https://gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os/-/merge_requests)



## Description 

These docker containers are intended to simulate a full operating system install for the sole purpose of automated testing. The aim is that these containers only contain the default set of software for the specified operating system, in this case Debian and Ubuntu. No Desktop environment is included. A SSH server has been added to the containers on `TCP/22` with the credentials of `root:admin` being availble. Theses containers **should not** be deployed to a production environment as part of an installation-This is not their purpose, they should only be used for testing what ever you are developing

Use cases include and not limited to:

- Ansible role/collection/playbook testing/deployment *(this is the reason we built these containers)*

- Script testing

- CI/CD as the base image


These containers are deployed to [Docker Hub](https://hub.docker.com/r/nofusscomputing/ansible-docker-os)

### Container Tags

These images are tagged using the following format: `{release}-{operating system}-{operating system major release version}`

- `{release}` *What release it is, will either be latest, dev, or semver*

- `{operating system}` *The Operating System used*

- `{operating system major release version}` *The major version of the Operating system release*

i.e. A Debian 11 image from the unstable (development) branch, would have a container tag of `dev-debian-11`

Pull the container with `docker pull nofusscomputing/ansible-docker-os:{container tag}`


## Contributing
All contributions for this project must conducted from [Gitlab](https://gitlab.com/nofusscomputing/projects/ansible/ansible_docker_os).

For further details on contributing please refer to the [contribution guide](CONTRIBUTING.md).


## Other

This repo is release under this [license](LICENSE)

