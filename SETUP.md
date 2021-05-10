# Setup

## New Magento 2 Project (macOS/Linux/ Docker WSL for Windows)

1. Clone this repository and init workspace
´´´
git clone https://github.com/bergerrc/magento.git
bin/init
´´´

2. Extract the contents of your current Magento site to the `src` folder, or download a fresh copy of the Magento source code for starting a new project with:
    - `bin/download` (defaults to 2.4.2 community)

3. Add an entry to your local hosts file with your custom domain. Assuming the domain you want to setup is `magento2.test`, enter the below. Be sure to use a `.test` tld, as `.localhost` and `.dev` will present issues with domain resolution.
    - `echo "127.0.0.1 magento2.test" | sudo tee -a /etc/hosts`

4. Setup your own variables in ./env
    - Copy `./env/db.env.sample` to `./env/db.env` and edit at least these variables
    ´´´
    MYSQL_PASSWORD=PUT_YOUR_OWNER_PASSWORD_HERE
    MYSQL_INTEGRATION_ROOT_PASSWORD=PUT_YOUR_MASTER_PASSWORD_HERE
    MYSQL_INTEGRATION_PASSWORD=PUT_ANOTHER_PASSWORD_HERE
    ´´´
    - Copy `./env/magento.env.sample` to `./env/magento.env`  and edit at least these variables
    ´´´
    MAGENTO_ADMIN_EMAIL=admin@example.com
    MAGENTO_ADMIN_USER=admin
    MAGENTO_ADMIN_PASSWORD=PUT_YOUR_ADMIN_PASSWORD_HERE
    ´´´

5. Composer Authentication

First setup Magento Marketplace authentication (details in the [DevDocs](http://devdocs.magento.com/guides/v2.0/install-gde/prereq/connect-auth.html)).

Copy `src/auth.json.sample` to `src/auth.json`. Then, update the username and password values with your Magento public and private keys, respectively. 

6. Start your Docker containers with the provided helper script:
    - `bin/start`

7. Copy the composer file to the container by running `bin/copytocontainer auth.json`.

8. Run Magento's setup install process with the below helper script. Feel free to edit this file to your liking; at the very least you will probably need to update the `base-url` value to the domain you setup in step 3. 
    - `bin/setup magento2.test`

9. You may now access your site! Check out whatever domain you setup from within a web browser.
    - `open http://magento2.test`