# Custom Aliases
## Current Date
alias cdate='date -u +"%Y%m%d_%H%M%S"'

## TFDOCS generator
alias tfdocs='docker run --rm --volume "${PWD}:/terraform-docs" -u $(id -u) quay.io/terraform-docs/terraform-docs:0.16.0 markdown terraform-docs/'

## TFLINT
alias tflint='docker run --rm -it -v $(pwd)/src:/data $CONTAINER_REGISTRY/tflint:latest --config /root/.tflint.hcl'

## Current valid IP, two options hitting ipify or by cloudflare DNS
# alias cip='curl https://api.ipify.org'
alias cip='dig +short txt ch whoami.cloudflare @1.0.0.1'

# cmake (terragrunt)
alias tmake='sudo make clear-cache && make '

alias lf='ls -aiLlhH'

## Azure
## Login for AZ-CLI
alias spnvl='az login --service-principal -u $ARM_CLIENT_ID -p $ARM_CLIENT_SECRET --tenant $ARM_TENANT_ID'
## Print Azure environment variables
alias azvars='printenv | grep ARM'

## Update Python-PIP
alias upip3='pip3 list --outdated --format=freeze | grep -v '^\-e' | cut -d = -f 1 | xargs -n1 pip3 install -U'
alias brew-update='brew update && brew list | xargs brew install && brew cleanup'

## System Utilities
## Disk usage within the current folder
alias fsize='sudo du -sh'
## Biggest files from / 
alias ofdisk='sudo du -aBm / 2>/dev/null | sort -nr | head -n 20'
## Cowsay with fortune
alias fcow='fortune | cowsay'
## Weather
alias wttr='curl http://wttr.in/Eloy+Chaves'

## OpenSSL Tools
alias sslcheck='openssl s_client -connect $1:443 | openssl x509 -noout -text'

## Check Curl
##alias url_check='url -L -s -w \'\nAPI Status: %{json}\n\' $1'
alias apistatus='curl -L -s -w "\nAPI Status: %{json}\n" $1'

## Docker Aliases
alias http='docker run -ti --rm -v ~/.httpie:/root/.httpie alpine/httpie'
alias https='docker run -ti --rm -v ~/.httpie:/root/.httpie --entrypoint=https alpine/httpie'
alias alpsh='docker run -it --rm alpine sh'
alias cbash='docker run -it --rm ubuntu bash'

## Small reminder for the commands
echo "Aliases:"
echo "envarm azvars, cdate, cip, lf, tflint, tfdocs, fsize \$folder, spnvl, upip3, ofdisk, fcow, wttr"

echo "Tools:"
echo "sqlitebiter (Convert data to sqlite), gitc, vault"

echo "Docker:"
echo "http, https, cbash, alpsh"
