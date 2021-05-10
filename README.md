## Magento2 to Cloud

Basically it's a Magento2 in a containers approach. The proposal is to increment the project so that it can be used from development (docker) to production environments in the cloud, specifically in a managed K8S.

### Thanks to
 - [**Mark Shust**](https://github.com/markshust) - where this repo is based from.

### Prerequisites

This setup assumes you are running Docker on a computer with at least 6GB of RAM allocated to Docker, a dual-core, and an SSD hard drive. [Download & Install Docker Desktop](https://www.docker.com/products/docker-desktop).

### Setup

- [**Setup Instructions**](https://github.com/bergerrc/magento/blob/master/SETUP.md) 

#### Debugging in VSCode

1.  Enable Xdebug in the PHP-FPM container by running: `bin/xdebug enable`, then the container will be restarted.

2.  In the VSCode, open `Run > Add Configuration ` and paste:
```
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
```
#### Activating PWA

WIP

#### Cli commands

You can search for more detailed for custom cli commands here:

- [**docker-magento**](https://github.com/bergerrc/docker-magento)

### Contributions

As the work is in the beginning I'd like to receive any questions or ideas through the issues tab.
[create an issue]: https://github.com/bergerrc/magento/issues/new

### Roadmap

 - Installing with PWA-Studio (Venia)
 - Add secrets control
 - Change files dependencies for environments settings
 - Conversion of Docker yaml to K8S
 - Run with integration tests
 - Prepare for GitHub Actions
 - Auto Publish Containers to Docker Repo (Hub or Cloud specific)

### License

[MIT](https://opensource.org/licenses/MIT)