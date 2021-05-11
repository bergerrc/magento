## Setup

### Pre requisites

  - Git Client

### New Magento 2 Project 

Note: It works on Docker WSL for Windows / macOS / Linux

1. Clone this repository and init workspace
```
git clone https://github.com/bergerrc/magento.git
bin/init
```
The cli command `init` will checkout useful commands for Magento administration and init git in your local project.

2. Download a fresh copy of the Magento source code for starting a new project with:
    - `bin/download` (defaults to 2.4.2 community)

3. Define your custom domain (see `BASE_URL` below), and add an entry to your local hosts file with your custom domain. Be sure to use a tld different of `.localhost` and `.dev` that will present issues with domain resolution.
    - `export BASE_URL=magento2.test`
    - `echo "127.0.0.1 $BASE_URL" | sudo tee -a /etc/hosts`

4. Setup your own variables in ./env
    - Edit `env/db.env` for the sensitive variables
    ```
    MYSQL_PASSWORD=PUT_YOUR_OWNER_PASSWORD_HERE
    MYSQL_INTEGRATION_ROOT_PASSWORD=PUT_YOUR_MASTER_PASSWORD_HERE
    MYSQL_INTEGRATION_PASSWORD=PUT_ANOTHER_PASSWORD_HERE
    ```
    - Edit `env/magento.env` for the sensitive variables
    ```
    MAGENTO_ADMIN_EMAIL=admin@example.com
    MAGENTO_ADMIN_USER=admin
    MAGENTO_ADMIN_PASSWORD=PUT_YOUR_ADMIN_PASSWORD_HERE
    ```

5. Composer Authentication

    First setup Magento Marketplace authentication (details in the [DevDocs](http://devdocs.magento.com/guides/v2.0/install-gde/prereq/connect-auth.html)).

    Copy `src/auth.json.sample` to `src/auth.json`. Then, update the username and password values with your Magento public and private keys, respectively. 

6. Start your Docker containers with the provided helper script:
    - `bin/start`

7. Copy the composer file to the container by running `bin/copytocontainer auth.json`.

8. Run Magento's setup install process with the below helper script.
    - `bin/setup $BASE_URL`

9. You may now access your site! Check out whatever domain you setup from within a web browser.
    - `open https://magento2.test` (or your defined custom domain)