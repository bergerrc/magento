# Magento Docker

Basically it's a Magento2 (2.4.2) dockerized version based on https://github.com/markshust/docker-magento. The proposal is to increment the project so that it can be used in development and production environments, specifically in a managed K8S.

## Prerequisites

This setup assumes you are running Docker on a computer with at least 6GB of RAM allocated to Docker, a dual-core, and an SSD hard drive. [Download & Install Docker Desktop](https://www.docker.com/products/docker-desktop).

## Setup
- [**Setup Instructions**](https://github.com/bergerrc/magento/blob/master/SETUP.md) 

### Xdebug in VSCode

1.  Enable Xdebug in the PHP-FPM container by running: `bin/xdebug enable`, then the container will be restarted.

2.  In the VSCode, open `Run > Add Configuration ` and paste:
´´´
        {
            "name": "Listen for XDebug",
            "hostname": "localhost",
            "type": "php",
            "request": "launch",
            "pathMappings": {
              "/var/www/html": "${workspaceFolder}/src"
            },
            "port": 9003,
        }
´´´
### Activating PWA
WIP

### Cli commands

You can search for more detailed for custom cli commands here:

- [**docker-magento**](https://github.com/bergerrc/docker-magento) - Reference for this project forked from https://github.com/markshust/docker-magento

## Contributions

As the work is in the beginning I'd like to receive any questions or ideas through the issues tab.
[create an issue]: https://github.com/bergerrc/magento/issues/new

## License

[MIT](https://opensource.org/licenses/MIT)