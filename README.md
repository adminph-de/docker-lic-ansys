<!--
*** To avoid retyping too much info. Do a search and replace for the following:
*** Foobar,adminph-de, docker-lic-ansys, N00ky2010, patrick.hayo@flsmidth.com
-->

# ANSYS License Server as Docker Container

[![Contributors][contributors-shield]][contributors-url]
[![Forks][forks-shield]][forks-url]
[![Stargazers][stars-shield]][stars-url]
[![Issues][issues-shield]][issues-url]
[![MIT License][license-shield]][license-url]
[![LinkedIn][linkedin-shield]][linkedin-url]

<br />
<p align="left">
  <a href="https://github.com/adminph-de/docker-lic-ansys">
    <img src="images/logo.png" alt="Code Snipes" width="35%" height="35%">
  </a>
  <p align="left">
    Delpying and Running <b>ANSYS License Server</b> in a Docker container.<br />
    This is <b><u>NOT</u></b> supported by ANSYS Inc. Use it on your own risk.<br />
    <br />
    <a href="https://github.com/adminph-de/docker-lic-ansys/issues">Bug Report</a>
    ·
    <a href="https://github.com/adminph-de/docker-lic-ansys/issues">Request Feature</a>
  </p>
</p>

## Content

- ANSYS License Server
  - [Content](#content)
  - [Installation](#installation)
  - [Usage](#usage)
  - [Contributing](#contributing)
  - [License](#license)
  - [Contact](#contact)
  - [Acknowledgements](#acknowledgements)

## Installation

pull the pre- build Docker image on [DockerHub](https://hub.docker.com/) 
or follow the instructions to build your own container.

```bash
pull codesnipes/ansyslics:latest
```

## Usage

```python
docker container run --name ansyslic \
        --hostname ansyslic \
        --publish 1084:1084 \
        --publish 1055:10554 \
        --publish 2325:2325 \
        --publish 49921:49921 \
        --volume ansyslic_licensefile:/ansys_inc/shared_files/licensing/license_files/ \
        codesnipes/ansyslic:latest
```

## Contributing
Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. [Fork](https://docs.github.com/en/enterprise/2.13/user/articles/fork-a-repo) the Project
2. Create your Feature Branch `git checkout -b feature/AmazingFeature`
3. Commit your Changes `git commit -m 'Add some AmazingFeature'`
4. Push to the Branch `git push origin feature/AmazingFeature`
5. Open a Pull Request

## License

Distributed under the [MIT](https://choosealicense.com/licenses/mit/) License. See `LICENSE` for more information.


## Contact

Project Link: [https://github.com/adminph-de/docker-lic-ansys](https://github.com/adminph-de/docker-lic-ansys)

[Patrick Hayo](patrick.hayo@flsmidth.com)

[![N00ky2010](https://img.shields.io/twitter/follow/N00ky2010)](https://www.twitter.com/N00ky2010)

## Acknowledgements

* [Janaina Laguardia Areal Hyldvang, Ph.D.](https://www.linkedin.com/in/janainahyldvang/)
* [Jakob Daugaard](https://www.linkedin.com/in/jakobdaugaard/?locale=en_US)
* [Senthil Kumar Bose](https://www.linkedin.com/in/senthil-kumar-bose-6900582/)
* [Javed Khan](https://www.linkedin.com/in/javed-khan-674863164/)

<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[contributors-shield]: https://img.shields.io/github/contributors/adminph-de/docker-lic-ansys.svg?style=flat-square
[contributors-url]: https://github.com/adminph-de/docker-lic-ansys/graphs/contributors
[forks-shield]: https://img.shields.io/github/forks/adminph-de/docker-lic-ansys.svg?style=flat-square
[forks-url]: https://github.com/adminph-de/docker-lic-ansys/network/members
[stars-shield]: https://img.shields.io/github/stars/adminph-de/docker-lic-ansys.svg?style=flat-square
[stars-url]: https://github.com/adminph-de/docker-lic-ansys/stargazers
[issues-shield]: https://img.shields.io/github/issues/adminph-de/docker-lic-ansys.svg?style=flat-square
[issues-url]: https://github.com/adminph-de/docker-lic-ansys/issues
[license-shield]: https://img.shields.io/github/license/adminph-de/docker-lic-ansys.svg?style=flat-square
[license-url]: https://github.com/adminph-de/docker-lic-ansys/blob/master/LICENSE.txt
[linkedin-shield]: https://img.shields.io/badge/-LinkedIn-black.svg?style=flat-square&logo=linkedin&colorB=555
[linkedin-url]: https://www.linkedin.com/in/patrickhayo/?locale=en_US