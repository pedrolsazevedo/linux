# LinuxDaily
Basic commands that use (or used)  to solve a situation or as initial config for a new instance that I gonna work.

## Proxy
At work we got a proxy running, to help manage the user/password I use CNTLM. This way everytime that I change my password I only need to change in one place.

For my setup CNTLM runs on port 53128.

Configuration can be found in [Proxy](/PROXY.MD)

## Personal Configuration
Some changes that I've done, like Alias and VIM Configuration

See [Personal Conf](/PERSONAL_CONF.MD)

## Basic commands reminder

1. Delete `.DS_Store` file
  ```bash
  find . -name '.DS_Store' -type f -delete
  ```
2. Delete `__MACOSX` folder
  ```bash
  find . -name __MACOSX -exec rm -rf {} \;
  ```
3. List all available packages Yum
  ```bash
  yum --showduplicates list PACKAGENAME
  ```
