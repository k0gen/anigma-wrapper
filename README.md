# Wrapper for Anigma

[Anigma](https://anigma.io/) is your self-hosted nostr client that can be accessed in the browser. This repository creates the `s9pk` package that is installed to run `anigma` on [embassyOS](https://github.com/Start9Labs/embassy-os/).

## Dependencies

Install the following system dependencies to build this project by following the instructions in the provided links. You can also find detailed steps to setup your environment in the service packaging [documentation](https://github.com/Start9Labs/service-pipeline#development-environment).

- [docker](https://docs.docker.com/get-docker)
- [docker-buildx](https://docs.docker.com/buildx/working-with-buildx/)
- [yq](https://mikefarah.gitbook.io/yq)
- [npm](https://www.npmjs.com/get-npm)
- [embassy-sdk](https://github.com/Start9Labs/embassy-os/blob/master/backend/install-sdk.sh)
- [make](https://www.gnu.org/software/make/)
- [deno](https://deno.land/#installation)

## Cloning

Clone the project locally. 

```
git clone git@github.com:Start9Labs/anigma-wrapper.git
cd anigma-wrapper
git submodule update --init
```

## Building

To build the `anigma` package, run the following command:

```
make
```

## Installing (on embassyOS)

Run the following commands to install:

> :information_source: Change embassy-server-name.local to your Embassy address

```
embassy-cli auth login
# Enter your embassy password
embassy-cli --host https://embassy-server-name.local package install anigma.s9pk
```

If you already have your `embassy-cli` config file setup with a default `host`,
you can install simply by running:

```
make install
```

> **Tip:** You can also install the anigma.s9pk using **Sideload Service** under
the **System > MANAGE** section.

### Verify Install

Go to your Embassy Services page, select **Anigma**, configure and start the service. Then, verify its interfaces are accessible.

**Done!** 
